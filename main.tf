provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 1
ami = "ami-01bd9d8f06d29d6a0"
instance_type = "t2.micro"
tags = {
Name = "mytfdemovm"
}
}
