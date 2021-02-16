#
# WARNING: This terraform code aims to create an S3 bucket that does not follow best practices!
#  
# This provisioning code is aimed to test preventative Policy-As-Code controls
#

resource "aws_s3_bucket" "ofender_example" {
  bucket = "ofender_example"
}

resource "aws_s3_bucket_public_access_block" "ofender_example" {
  bucket = aws_s3_bucket.ofender_example.id

  block_public_acls   = false
  block_public_policy = false
}
