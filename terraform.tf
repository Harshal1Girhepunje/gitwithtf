provider "aws" {

  region = "ap-south-1"
}
resource "aws_vpc" "vpc2" {

  cidr_block = var.range

  tags = {

    Name = "vpc2"
  }

}

resource "aws_instance" "ec2instance2" {

  instance_type = var.type
  ami           = var.ami
  tags = {

    Name = "ec2instance2"
  }

}


resource "aws_security_group" "sg15" {
  vpc_id = aws_vpc.vpc2.id
  tags = {

    Name = "sg15"
  }


}

resource "aws_s3_bucket" "s3test2" {


  acl = var.control

  tags = {

    Name = "s3test2"
  }
} 