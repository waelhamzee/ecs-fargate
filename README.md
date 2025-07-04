# ECS Fargate Terraform Project

This project provisions AWS ECS Fargate resources using Terraform. It automates the deployment of containerized applications with scalable, serverless infrastructure, accessible at:  
[http://node-template-alb-525412564.eu-north-1.elb.amazonaws.com/](http://node-template-alb-525412564.eu-north-1.elb.amazonaws.com/)

## Features

- ECS Cluster and Fargate Service provisioning
- Task Definition management
- Integration with Application Load Balancer
- IAM roles and security groups configuration

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- AWS CLI configured with appropriate credentials
- An AWS account

## Usage

1. **Clone the repository:**

```sh
git clone https://github.com/waelhamzee/ecs-fargate.git
cd ecs-fargate
```

2. **Initialize Terraform:**

```sh
terraform init
```

3. **Review and customize variables in `variables.tf` or via CLI.**

4. **Plan the deployment:**

```sh
terraform plan
```

5. **Apply the configuration:**

```sh
terraform apply
```

## Outputs

- ECS Cluster name
- Service ARN
- Load Balancer DNS (if enabled)

## Cleanup

To destroy all resources:

```sh
terraform destroy
```
