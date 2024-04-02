#!/bin/bash

# Update the package manager and install Docker
sudo apt-get update -y
sudo apt-get install -y docker.io

# Start the Docker service
sudo systemctl start docker

# Enable Docker to start on boot
sudo systemctl enable docker

# Pull and run a simple Nginx web server container
sudo docker run -d --name webapp1 -p 3000:3000 ejejosh/webapp1:latest
sudo docker run -d --name webapp2 -p 8081:80 ejejosh/webapp2:latest