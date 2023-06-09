resource "aws_instance" "ec2" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
      "name" = var.tag_name
      "Owner" = var.tag_owner
    }
    volume_tags = {
      "name" = var.tag_name
      "Owner" = var.tag_owner
    }
}
