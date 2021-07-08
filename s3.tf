resource "aws_s3_bucket" "b" {
  bucket = "my-tf-anagdevops-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
