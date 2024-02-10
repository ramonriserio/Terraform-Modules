provider "aws" {
    region = "us-east-1"
}

module "ec2-instances" {
    source = "./modules/ec2-instance"
#    version = "5.5.0"
}

output "instance_ids" {
    value = module.ec2-instances.instance_ids
}

output "public_ips" {
    value = module.ec2-instances.public_ips
}