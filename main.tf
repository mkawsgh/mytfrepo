provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-080b1a55a0ad28c02"
instance_type = "t2.micro"
key_name = "devopsbyraham"
vpc_security_group_ids = ["sg-0b8853497a3a91dc8"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
