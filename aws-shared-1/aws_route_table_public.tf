# WARNING: this file is generated!

resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "107.22.236.225/32"
    instance_id = "${aws_instance.nat_quay.id}"
  }

  route {
    cidr_block = "174.129.233.65/32"
    instance_id = "${aws_instance.nat_quay.id}"
  }

  route {
    cidr_block = "184.73.225.107/32"
    instance_id = "${aws_instance.nat_quay.id}"
  }

  route {
    cidr_block = "184.73.236.204/32"
    instance_id = "${aws_instance.nat_quay.id}"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}
