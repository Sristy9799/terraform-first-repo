provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "Demo" {
  ami = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld-${var.env}"
  }
}