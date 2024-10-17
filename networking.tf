resource "aws_vpc" "tf_cloud" {
  cidr_block = var.vpc_cidr
  tags = {
    name = "terraform-cloud"
  }

}

resource "aws_subnet" "tf_cloud" {
  cidr_block = var.subnet_cidr
  vpc_id     = aws_vpc.tf_cloud.id

  tags = {
    name = "terraform-cloud"
  }
}