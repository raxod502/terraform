https://docs.google.com/document/d/1j50UwUYQhnX7nOxeCIeR1SeWEZ08ec_MrQMCKFUK58Q/edit

Alex's term outputs + command:
Note: Objects have changed outside of Terraform
Terraform detected the following changes made outside of Terraform since the last “terraform apply”:
  # aws_instance.web has been changed
  ~ resource “aws_instance” “web” {
        id                                   = “i-0774b73615ae7b194"
      + tags                                 = {}
        # (28 unchanged attributes hidden)
        # (5 unchanged blocks hidden)
    }
Unless you have made equivalent changes to your configuration, or ignored the relevant attributes using ignore_changes, the following plan may
include actions to undo or respond to these changes.
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy
Terraform will perform the following actions:
  # aws_instance.app_server will be destroyed
  - resource “aws_instance” “app_server” {
      - ami                                  = “ami-830c94e3” -> null
      - arn                                  = “arn:aws:ec2:us-west-2:903572262058:instance/i-02d7f27c11bfe3ed1" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = “us-west-2c” -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = “i-02d7f27c11bfe3ed1" -> null
      - instance_initiated_shutdown_behavior = “stop” -> null
      - instance_state                       = “running” -> null
      - instance_type                        = “t2.micro” -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - primary_network_interface_id         = “eni-062ac6b71f7c69f29" -> null
      - private_dns                          = “ip-172-31-11-37.us-west-2.compute.internal” -> null
      - private_ip                           = “172.31.11.37" -> null
      - public_dns                           = “ec2-34-221-150-54.us-west-2.compute.amazonaws.com” -> null
      - public_ip                            = “34.221.150.54" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - “default”,
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = “subnet-eea4c6b3" -> null
      - tags                                 = {
          - “Name” = “ExampleAppServerInstance”
        } -> null
      - tags_all                             = {
          - “Name” = “ExampleAppServerInstance”
        } -> null
      - tenancy                              = “default” -> null
      - vpc_security_group_ids               = [
          - “sg-99b8e7af”,
        ] -> null
      - capacity_reservation_specification {
          - capacity_reservation_preference = “open” -> null
        }
      - credit_specification {
          - cpu_credits = “standard” -> null
        }
      - enclave_options {
          - enabled = false -> null
        }
      - metadata_options {
          - http_endpoint               = “enabled” -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = “optional” -> null
        }
      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = “/dev/sda1” -> null
          - encrypted             = false -> null
          - iops                  = 0 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = “vol-0cfc9d93219dba6ca” -> null
          - volume_size           = 8 -> null
          - volume_type           = “standard” -> null
        }
    }
  # aws_instance.web will be destroyed
  - resource “aws_instance” “web” {
      - ami                                  = “ami-830c94e3" -> null
      - arn                                  = “arn:aws:ec2:us-west-2:903572262058:instance/i-0774b73615ae7b194” -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = “us-west-2c” -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = “i-0774b73615ae7b194” -> null
      - instance_initiated_shutdown_behavior = “stop” -> null
      - instance_state                       = “running” -> null
      - instance_type                        = “t2.micro” -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - primary_network_interface_id         = “eni-0c9b3ca79eb3efd82” -> null
      - private_dns                          = “ip-172-31-13-63.us-west-2.compute.internal” -> null
      - private_ip                           = “172.31.13.63” -> null
      - public_dns                           = “ec2-34-220-133-190.us-west-2.compute.amazonaws.com” -> null
      - public_ip                            = “34.220.133.190” -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - “default”,
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = “subnet-eea4c6b3” -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
      - tenancy                              = “default” -> null
      - vpc_security_group_ids               = [
          - “sg-99b8e7af”,
        ] -> null
      - capacity_reservation_specification {
          - capacity_reservation_preference = “open” -> null
        }
      - credit_specification {
          - cpu_credits = “standard” -> null
        }
      - enclave_options {
          - enabled = false -> null
        }
      - metadata_options {
          - http_endpoint               = “enabled” -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = “optional” -> null
        }
      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = “/dev/sda1" -> null
          - encrypted             = false -> null
          - iops                  = 0 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = “vol-0dfecfff00b3e2e19” -> null
          - volume_size           = 8 -> null
          - volume_type           = “standard” -> null
        }
    }
Plan: 0 to add, 0 to change, 2 to destroy.
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Note: You didn’t use the -out option to save this plan, so Terraform can’t guarantee to take exactly these actions if you run “terraform
apply” now.
5:25
~/go/bin/terraform plan -destroy -exclude=“app_server.aws_instance”
New
5:29

➜  terraform-first-project ~/go/bin/terraform destroy -exclude=“aws_instance.app_server”
aws_instance.web: Refreshing state... [id=i-0774b73615ae7b194]
Note: Objects have changed outside of Terraform
Terraform detected the following changes made outside of Terraform since the last “terraform apply”:
  # aws_instance.web has been changed
  ~ resource “aws_instance” “web” {
        id                                   = “i-0774b73615ae7b194”
      + tags                                 = {}
        # (28 unchanged attributes hidden)
        # (5 unchanged blocks hidden)
    }
Unless you have made equivalent changes to your configuration, or ignored the relevant attributes using ignore_changes, the following plan may
include actions to undo or respond to these changes.
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy
Terraform will perform the following actions:
  # aws_instance.web will be destroyed
  - resource “aws_instance” “web” {
      - ami                                  = “ami-830c94e3" -> null
      - arn                                  = “arn:aws:ec2:us-west-2:903572262058:instance/i-0774b73615ae7b194” -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = “us-west-2c” -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = “i-0774b73615ae7b194” -> null
      - instance_initiated_shutdown_behavior = “stop” -> null
      - instance_state                       = “running” -> null
      - instance_type                        = “t2.micro” -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - primary_network_interface_id         = “eni-0c9b3ca79eb3efd82” -> null
      - private_dns                          = “ip-172-31-13-63.us-west-2.compute.internal” -> null
      - private_ip                           = “172.31.13.63” -> null
      - public_dns                           = “ec2-34-220-133-190.us-west-2.compute.amazonaws.com” -> null
      - public_ip                            = “34.220.133.190” -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - “default”,
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = “subnet-eea4c6b3” -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
      - tenancy                              = “default” -> null
      - vpc_security_group_ids               = [
          - “sg-99b8e7af”,
        ] -> null
      - capacity_reservation_specification {
          - capacity_reservation_preference = “open” -> null
        }
      - credit_specification {
          - cpu_credits = “standard” -> null
        }
      - enclave_options {
          - enabled = false -> null
        }
      - metadata_options {
          - http_endpoint               = “enabled” -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = “optional” -> null
        }
      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = “/dev/sda1" -> null
          - encrypted             = false -> null
          - iops                  = 0 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = “vol-0dfecfff00b3e2e19” -> null
          - volume_size           = 8 -> null
          - volume_type           = “standard” -> null
        }
    }
Plan: 0 to add, 0 to change, 1 to destroy.
Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only ‘yes’ will be accepted to confirm.

look through the pull request to see what's necessary
Make tests for the following on transform_targets_test:
test exclude by itself
test how it works when you target a module but exclude a subset inside of the module
Throwing an error when exclude and including a target
Looking at how outputs works with target

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
