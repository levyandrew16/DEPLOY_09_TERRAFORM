resource "aws_instance" "EC201" {
     ami = "ami-002068ed284fb165b" 
     instance_type = "t2.micro"
     key_name = "EC2 Tutorial LA"
     subnet_id = "subnet-0341bf4deceb6e1b5"
     security_groups = "public_sg"
     }

resource "aws_security_group" "public_sg" {
    name = "public_sg"
    description = "Allow Ingress"
     ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
            }
        
        egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
                }
}
