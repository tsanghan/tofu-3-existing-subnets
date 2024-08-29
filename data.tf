data "aws_availability_zones" "available" {}

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical

# }

# data "http" "myip" {
#   url = "http://api.ipify.org"
# }

# data "cloudinit_config" "web_server" {

#   part {
#     filename     = "hello-script.sh"
#     content_type = "text/x-shellscript"

#     content = file("cloud-init/run-script.sh")
#   }

#   part {
#     filename     = "cloud-config.yaml"
#     content_type = "text/cloud-config"

#     content = file("cloud-init/cloud-config.yaml")
#   }
# }


# data "aws_route53_zone" "selected" {
#   name = "sctp-sandbox.com."
# }

# data "aws_lb_hosted_zone_id" "main" {}

# data "aws_subnets" "selected" {
#   filter {
#     name   = "vpc-id"
#     values = [module.vpc.vpc_id]
#   }
# }
