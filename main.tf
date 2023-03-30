terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.6"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami        = "ami-0342738dbfee29539"
  instance_type = "t2.micro"
  tags = {
    "Name" = "terraform-example"
  }
}

