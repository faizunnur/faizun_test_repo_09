output "instance_id" {
  description = "The ID of the EC2 instance running nginx"
  value       = aws_instance.server.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.server.public_ip
}

output "instance_public_dns" {
  description = "The public DNS name of the EC2 instance"
  value       = aws_instance.server.public_dns
}

output "nginx_url" {
  description = "The URL to access nginx"
  value       = "http://${aws_instance.server.public_ip}"
}

output "security_group_id" {
  description = "The ID of the security group attached to the EC2 instance"
  value       = aws_security_group.sg.id
}

output "project_name" {
  description = "The project name"
  value       = "faizun_tst_09"
}

output "ssh_connection_string" {
  description = "SSH connection string for the EC2 instance"
  value       = "ssh -i your-key.pem ec2-user@${aws_instance.server.public_ip}"
}