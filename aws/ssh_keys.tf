resource "aws_lightsail_key_pair" "ssh_keys" {
  count = length(var.ssh_keys)

  name       = element(keys(var.ssh_keys), count.index)
  public_key = element(values(var.ssh_keys), count.index)
}
