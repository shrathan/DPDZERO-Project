**This project sets up a reverse proxy using Nginx inside a Docker container, routing requests to two backend services:**

service1: A Go-based application

service2: A Python Flask application

All services run in Docker containers and are orchestrated using **Docker Compose**.
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**Requirements**
Docker
Git
Docker Compose
AWS EC2 (Ubuntu 22.04)
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Setup Instructions**
_Clone the Repository_

git clone https://github.com/shrathan/DPDZERO-Project.git
cd DPDZERO-Project

-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Build and Start the Services**

docker-compose up --build

**This command will:**

Build all 3 Docker images (nginx, service1, service2)
Start the containers
Map port 8080 on your EC2 to port 80 on the Nginx container
-------------------------------------------------------------------------------------------------------------------------------------------------------------
**Access the Services**
Service 1 (Go App):
http://ec2public-ip:8080/service1/

Service 2 (Flask App):
http://ec2public-ip:8080/service2/

--------------------------------------------------------------------------------------------------------------------------------------------------------------




