provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "centos" {
  ami = "ami-030ff268bd7b4e8b5"
  instance_type = "t3.micro"
  tags = {
    Name = "yogesh"
  }
}
resource "null_resource" "create_inventory" {
  provisioner "local-exec" {
    command = "echo ${aws_instance.centos.private_ip} ansible_user=root ansible_password=thinknyx@123 > ./inventory"
  }
}
