provider "aws" {
  region     = "ap-south-1"
  access_key = "abc123"
  secret_key = "abc123"
}

# privider "azurerm"{}
resource "aws_instance" "Ec2-terraform-user" {
  ami           = "ami-0f2e255ec956ade7f"
  instance_type = "t3.micro"

  tags = {
    Name = "My-first-ec2-using-tf" #name of the instance
  }
}
