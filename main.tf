# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 5.0"
    }
  }
}

# Provider Block
provider "aws"{
    region = "us-east-1"
}

# Resource Block
resource "aws_instance" "terraform_server" {
  ami           = "ami-043a5a82b6cf98947"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-server" # Set the instance name
  }
}
