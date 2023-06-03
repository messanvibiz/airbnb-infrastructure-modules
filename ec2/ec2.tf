resource "aws_instance" "web" {
  ami           = "ami-05842f1afbf311a43"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "HelloWorld"
  }
}