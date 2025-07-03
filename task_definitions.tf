resource "aws_ecs_task_definition" "app" {
  family                   = var.app_name
  cpu                      = "256"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn

  container_definitions = jsonencode([{
    name      = var.app_name,
    image     = var.image_url,
    essential = true,
    portMappings = [{
      containerPort = 3000,
      protocol      = "tcp"
    }],
    logConfiguration = {
      logDriver = "awslogs",
      options = {
        awslogs-group         = aws_cloudwatch_log_group.app.name,
        awslogs-region        = "eu-north-1",
        awslogs-stream-prefix = var.app_name
      }
    },
  }])
}
