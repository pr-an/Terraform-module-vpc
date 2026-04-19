variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name (dev/stage/prod)"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "bucket_suffix" {
  description = "Suffix for S3 bucket name"
  type        = string
}

variable "key_name" {
  description = "EC2 Key Pair name"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}

# Subnets input (VERY IMPORTANT for your current design)
variable "subnets" {
  description = "Subnet configuration"
  type = map(object({
    cidr       = string
    az         = string
    is_public  = bool
  }))
}

# EC2 instances input (VERY IMPORTANT for for_each)
variable "ec2_instances" {
  description = "EC2 instance config"
  type = map(object({
    ami_id        = string
    instance_type = string
    subnet_key    = string
  }))
}
