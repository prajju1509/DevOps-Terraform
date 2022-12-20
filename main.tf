resource "aws_instance" "web1" {
  #ami           = "ami-03d3eec31be6ef6f9"
  #instance_type = "t2.micro"
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Instance-1"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-03d3eec31be6ef6f9"
  instance_type = "t2.micro"

  tags = {
    Name = "Instance-2"
  }
}