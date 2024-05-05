variable "aws_region" {
  description = "The AWS region where the EC2 instance will be created."
}

variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance."
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
}

variable "instance_name" {
  description = "The name tag for the EC2 instance."
}
