provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAS6QX5KDKXJ4EYNZJ"
  secret_key = "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"
}
resource "aws_instance" "us-west-2" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"
}

