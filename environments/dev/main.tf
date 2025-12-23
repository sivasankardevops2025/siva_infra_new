module "vpc" {
  source        = "envirnoments../../modules/vpc"
  vpc-cidr      = "10.0.0.0/16"
  subnet-cidr   = "10.0.0.1/24"
  subnet-az     = "${var.aws_region}a"
  env           =  "dev"
} 

module "ec2" {
  source        = "envirnoments../../modules/ec2"
  ami_id        = "ami-05f071c65e32875a8"
  instance_type = "t3.micro"
  subnet_id     = module.vpc.subnet_id
  ec2_count     = 1
  env           = "dev"
}
