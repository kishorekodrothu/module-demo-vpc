resource "aws_vpc" "kong-vpc" {
    cidr_block = var.vpc_cidr_block
    tags = {
      "Name" = "king-vpc"
    }
  
}
resource "aws_subnet" "exp-subs" {
    count = length(var.cidr_block)
    vpc_id = aws_vpc.kong-vpc.id 
    cidr_block = var.aws_subnet_details[count.index]
    availability_zone = var.aws_subnet_details[count.index]
    tags = {
      "Name" = var.aws_subnet_details[count.index]
    }
  
}