provider "aws" {
 region = "us-west-2"
}


resource "aws_s3_bucket" "s3-aws-democast-pas" {
 bucket        = "s3-aws-democast-pas"
}


resource "aws_s3_bucket_acl" "acl" {
 bucket        = aws_s3_bucket.s3-aws-democast-pas.id
 acl           = "private"
}


resource "aws_s3_bucket_public_access_block" "block" {
 bucket                  = "${aws_s3_bucket.s3-aws-democast-pas.id}"
 block_public_acls       = false
 block_public_policy     = false
 ignore_public_acls      = false
 restrict_public_buckets = false
}

