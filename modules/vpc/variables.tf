variable "env" {
  type              = string
  description   = "what environment we are creating(dev,qa,production)"      
}
  
variable "vpc-cidr" {
  type              = string
  description   = "vpc-cidr"      
}
  
variable "subnet-cidr" {
  type              = string
  description   = "subnet-cidr"      
}

variable "subnet-az" {
  type              = string
  description   = "az of subnet"      
}
  