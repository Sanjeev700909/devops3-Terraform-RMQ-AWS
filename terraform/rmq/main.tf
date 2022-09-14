provider "aws" {
    region="us-west-2"
    profile=var.profile
}

resource "aws_instance" "rmq" {
    ami = "ami-0038b92628b6b6291"
    instance_type = "t2.micro"
    key_name = "NewKey"
    vpc_security_group_ids = [ "sg-0165b85f9d9cdb796" ]

    tags = {
        Name = var.name
        group = var.group
    }
}
