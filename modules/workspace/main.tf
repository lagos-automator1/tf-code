module "web_app" {
  source = "../ec2-instance"

  name     = "Web 1"  
  subnet_id = "subnet-032710507dd03b210" 
}
