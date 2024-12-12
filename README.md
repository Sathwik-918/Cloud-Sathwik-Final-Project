# Terraform AWS Infrastructure Project

This repository contains Terraform configuration files to deploy an AWS-based infrastructure. The setup includes creating a VPC, subnets, security groups, an EC2 instance, an S3 bucket for state management, and a DynamoDB table for state locking.

## Project Structure

- **`main.tf`**: Defines the core infrastructure resources such as VPC, subnets, security groups, S3 bucket, DynamoDB table, and EC2 instance.
- **`backend.tf`**: Configures the backend for storing Terraform state files in an S3 bucket with DynamoDB state locking.
- **`variables.tf`**: Declares variables for parameterized infrastructure.
- **`terraform.tfvars`**: Provides values for variables specific to the deployment environment.

## Features

### Networking
- Creates a VPC with a customizable CIDR block.
- Adds a public subnet for deploying resources with internet access.

### Security
- Configures a security group to allow SSH (port 22), HTTP (port 80), and HTTPS (port 443) from all IP addresses.

### State Management
- Uses an S3 bucket with versioning enabled for Terraform state files.
- Sets up a DynamoDB table for state locking to prevent concurrent operations.

### Compute
- Launches an EC2 instance in the public subnet with a public IP address and the associated security group.


## Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/Sathwik-918/Sathwik-Finalproject.git
cd Sathwik-Finalproject
