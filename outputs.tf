output "id" {
    value = aws_vpc.kong-vpc.id
  
}
#output "owner_id" {
    #value = aws_vpc.kong-vpc.owner_id
  
#}
#output "aws_subnet_names" {
  #  value = aws_subnet.exp-subs
  
#}
output "subnet_cidr_ranges" {
    value = var.cidr_block
  
}