# ec2-instance/main.tf

variable "name" {
  description = "Name to be used for the instance"  
  type        = string
}

variable "subnet_id" {
  description = "VPC Subnet ID the instance is launched in"
  type        = string  
}

resource "aws_instance" "this" {
  ami           = "ami-0f8f99aa5fa000138" # Amazon Linux 
  instance_type = "t2.micro"

  subnet_id              = var.subnet_id
  vpc_security_group_ids = ["sg-0d4faa9325bb8f8af"] 
  
  tags = {
    Name = var.name
  }
}

# Outputs for referencing later

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.this.id
}
