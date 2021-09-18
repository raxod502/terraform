https://docs.google.com/document/d/1j50UwUYQhnX7nOxeCIeR1SeWEZ08ec_MrQMCKFUK58Q/edit

selecTargetNode ignores providers that should be gone
changes.go: internal\plans\changes.go
Terraform gets the exclude target even though it shouldn't
Error message stemming from eval_providers.go, leads to node_resource_destroy.go in managedResourceExecute
How does the anonymous function in graphwalkcontext get args

For this meeting:
setTargets in node_resource_abstract (https://github.com/Th3will/terraform/blob/6915cf34a739d8014d8c4b048865aff6a5f00a54/internal/terraform/node_resource_abstract.go?plain=1) needs to include exclude targets. However it typically only accepts one argument which is seen in transform_targets.go

Panic Message to find the difference in:
Exclude:
github.com/hashicorp/terraform/internal/terraform.getProvider(...)
        C:/CompSci/Terraform/terraform/internal/terraform/eval_provider.go:43
github.com/hashicorp/terraform/internal/terraform.(*NodeValidatableResource).validateResource(0xc0006f2598, 0x34d6960, 0xc0008baa80, 0xc00099fc50, 0xc7602d, 0xc000ae6e38)
        C:/CompSci/Terraform/terraform/internal/terraform/node_resource_validate.go:269 +0xad
github.com/hashicorp/terraform/internal/terraform.(*NodeValidatableResource).Execute(0xc0006f2598, 0x34d6960, 0xc0008baa80, 0x1eaf4ef4204, 0xc00099fce8, 0xc7c06a, 0x2cc31e0)
        C:/CompSci/Terraform/terraform/internal/terraform/node_resource_validate.go:41 +0x65

Second Exclude:
github.com/hashicorp/terraform/internal/terraform.(*NodeValidatableResource).validateResource(...)
        C:/CompSci/Terraform/terraform/internal/terraform/node_resource_validate.go:266
github.com/hashicorp/terraform/internal/terraform.(*NodeValidatableResource).Execute(0xc0003ab9c8, 0x2adf3c0, 0xc000c56700, 0x144fbd3b104, 0xc000c99ce8, 0x23c06a, 0x22bf800)
        C:/CompSci/Terraform/terraform/internal/terraform/node_resource_validate.go:39 +0x45

github.com/hashicorp/terraform/internal/terraform.(*ContextGraphWalker).Execute(0xc0009712b0, 0x2adf3c0, 0xc000c56700, 0x144fbd3b1e0, 0xc0003ab9c8, 0x0, 0x0, 0x0)
        C:/CompSci/Terraform/terraform/internal/terraform/graph_walk_context.go:129 +0xc6

github.com/hashicorp/terraform/internal/terraform.(*Graph).walk.func1(0x25a5460, 0xc0003ab9c8, 0x0, 0x0, 0x0)
        C:/CompSci/Terraform/terraform/internal/terraform/graph.go:59 +0xbe2
github.com/hashicorp/terraform/internal/dag.(*Walker).walkVertex(0xc00088b8c0, 0x25a5460, 0xc0003ab9c8, 0xc00096f0c0)
        C:/CompSci/Terraform/terraform/internal/dag/walk.go:381 +0x2a2
created by github.com/hashicorp/terraform/internal/dag.(*Walker).Update
        C:/CompSci/Terraform/terraform/internal/dag/walk.go:304 +0x1246

Target:
github.com/hashicorp/terraform/internal/terraform.(*NodeApplyableProvider).Execute(0xc0006decf8, 0x3433c80, 0xc0007cc380, 0x1507d159904, 0xc00095dce8, 0xb8c06a, 0x2c13800)
        C:/CompSci/Terraform/terraform/internal/terraform/node_provider.go:25 +0x45


github.com/hashicorp/terraform/internal/terraform.(*ContextGraphWalker).Execute(0xc00093a8f0, 0x3433c80, 0xc0007cc380, 0x1507d159998, 0xc0006decf8, 0x0, 0x0, 0x0)
        C:/CompSci/Terraform/terraform/internal/terraform/graph_walk_context.go:129 +0xc6

        
github.com/hashicorp/terraform/internal/terraform.(*Graph).walk.func1(0x2e31be0, 0xc0006decf8, 0x0, 0x0, 0x0)
        C:/CompSci/Terraform/terraform/internal/terraform/graph.go:59 +0xbe2
github.com/hashicorp/terraform/internal/dag.(*Walker).walkVertex(0xc0000919e0, 0x2e31be0, 0xc0006decf8, 0xc000916f80)
        C:/CompSci/Terraform/terraform/internal/dag/walk.go:381 +0x2a2
created by github.com/hashicorp/terraform/internal/dag.(*Walker).Update
        C:/CompSci/Terraform/terraform/internal/dag/walk.go:304 +0x1246

ignore below
There is an init provider in node_provider that is probably the issue

Stopped here b/c import is an actual command.
Alternatively one goes into tranform_import_state.go, which actually contains target, so I added a new field to the struct and reused the same logic, went to find where the struct was used, in graph_builder_import, then added a new field to the struct, found where that was used, in context_import.go, that contained ImportOps(struct) + ImportTarget(struct). Stopped here b/c import is an actual command.
