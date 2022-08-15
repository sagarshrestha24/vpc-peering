variable "accepter_vpc_id" {
    type = string
    default = ""
}

variable "requester_vpc_id" {
    type = string
    default = ""
}


variable "eks_route_tables_requester_ids" {
    type = string
    default = ""
}

variable "rds_route_tables_accepter_ids" {
    type = string
    default = "" 
}



variable "rds_vpc_accepter_cidr_block" {
    type = string
    default = ""
}


variable "eks_vpc_requester_cidr_block" {
    type = string
    default = ""
}

variable "Name" {
    type = string
    default = ""  
}





