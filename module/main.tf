module "ec2" {
    source = "../ec2"
    for_each = var.ec2
    ami = each.value.ami
    instance_type = each.value.instance_type
    tag_name = each.value.tag_name
    tag_owner = each.value.tag_owner
}

module "s3" {
    source = "../s3"
    bucket_name = var.bucket_name
}
