provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "test" {
  ami           = "ami-061dbd1209944525c"
  instance_type = "t2.micro"
}

output "ip" {
  value = aws_instance.test.public_ip 
}