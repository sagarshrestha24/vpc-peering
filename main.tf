resource "aws_vpc_peering_connection" "default" {
peer_vpc_id = var.requester_vpc_id
vpc_id = var.accepter_vpc_id
auto_accept = true

accepter {
allow_remote_vpc_dns_resolution = false
}

requester {
allow_remote_vpc_dns_resolution = false
}

tags = {
Name = var.Name
}
}

