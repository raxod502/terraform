resource "aws_vpc" "me" {}

resource "aws_subnet" "me" {
  depends_on = [
    aws_vpc.me,
  ]
}

resource "aws_instance" "me" {
  depends_on = [
    aws_subnet.me,
  ]
}

resource "aws_instance" "notmeeither" {
  depends_on = [
    aws_instance.me,
  ]
}
module "child" {
  source = "./child"
}
