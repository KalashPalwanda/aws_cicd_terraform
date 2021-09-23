variable "env" {
  description = "Depolyment environment"
  default     = "devdemo"
}

variable "region" {
  description = "AWS region"
  default     = "eu-west-1"
}

variable "repository_branch" {
  description = "Repository branch to connect to"
  default     = "main"
}

variable "repository_owner" {
  description = "GitHub repository owner"
  default     = "kalashPalwanda"
}

variable "repository_name" {
  description = "GitHub repository name"
  default     = "static-web-example"
}

variable "static_web_bucket_name" {
  description = "S3 Bucket to deploy to"
  default     = "static-web-example-bucket1"
}

variable "artifacts_bucket_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "static-web-example-artifacts1"
}
variable "codestar_connector_credentials" {
  description = "connection for github source"  
  default = "arn:aws:codestar-connections:us-east-2:202987360469:connection/75b6d88e-2eca-4485-926b-2dfae513fefb"
}
variable "github_token" {
}

output "web_public_url" {
  value = aws_s3_bucket.static_web_bucket.website_endpoint
}
