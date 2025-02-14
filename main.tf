provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-053a45fff0a704a47"
instance_type = "t2.micro"
key_name = "rahull"
vpc_security_group_ids = ["sg-0c896894e4a995e3c"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "AppServer-1", "AppServer-2", "Monitoring server"]
}
