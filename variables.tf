variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
}

variable "volume_size" {
  description = "Whether to create an instance Size of the root volume in gigabytes"
  type        = number
}

variable "name" {
  description = "Name to be used on EC2 instance created"
  type        = string
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the aws_key_pair resource"
  type        = string
}

variable "region" {
  description = "AWS Region the instance is launched in"
  type        = string
}
variable "encrypted" {
  description = "Whether to enable volume encryption. Must be configured to perform drift detection."
  type        = bool
  default     = true
}
variable "http_tokens" {
  description = "Whether or not the metadata service requires session tokens, also referred to as Instance Metadata Service Version 2 (IMDSv2). Valid values include optional or required"
  type        = string
  default     = "required"
}
variable "associate_public_ip_address" {
  type = bool
  default = false
  description = "Whether to associate a public IP address with an instance in a VPC"
}