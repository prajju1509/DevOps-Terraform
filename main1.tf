# this .tf crete one single ec2
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 0.15.1"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0f69bc5520884278e"
  instance_type = "t2.micro"

  tags = {
    Name = "Instance-1"
  }
