terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    bucket         = "terraform-state-bucket-kp"
    key            = "ec2project/terraform.tfstate"
    region         = "us-west-2"               
    encrypt        = true
    dynamodb_table = "terraform-lock-table-kp" 
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example_server" {
  ami           = "ami-023e152801ee4846a"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}