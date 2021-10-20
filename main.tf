
 variable "AWS_ACCESS_KEY_ID" {}
 variable "AWS_SECRET_ACCESS_KEY" {}

provider "aws" {
  access_key  =  "${var.AWS_ACCESS_KEY_ID}"
  secret_key  = "${var.AWS_SECRET_ACCESS_KEY}"
  region      = "eu-central-1"
}
  data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["amazon"]
  }

resource "aws_instance" "Netology-HWork" {
  ami = data.aws_ami.ubuntu.id
instance_type = "t2.micro"
  tags = {
    Name = "Netol-HW-Test"
}

}




