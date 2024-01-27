DOCKER

What is DOCKER

	A docker is a tool that helps in developing, building, deploying and executing software in isolation. it does so by creating containers that completely wrap a software.

CONTAINER

	A container is a software that wrap up all the parts of a code and its dependencies in a sigle deployment unit that can be run on different systems or servers.
	for ex- code + libraries + e.t.c = Conatainers --> OS
			
WHy we use containers

	Containers require less system resources than traditional or hardware virtual machine environments because they don't include operating system images. 
	Applications running in containers can be deployed easily to multiple different operating systems and hardware platforms.

What is repository

	Docker Hub repositories allow you share container images with your team, customers, or the Docker community at large.
	Docker images are pushed to Docker Hub through the docker push command. A single Docker Hub repository can hold many Docker images (stored as tags).


DOCKER ENVIRONMENT  

	1.) Docker Engine
	2.) Docker Registry
	3.) DOcker Objects
	4.) Docker Compose
	5.) Docker Swarm

DOCKER ENGINE
								
	It consists of
	Docker CLI + Docker API + Docker Daemon

DOCKER REGISTRY 

	Docker registry is as storage location of Docker images. These images can be versioned in the registry as well.
	It is also called DOCKER-HUB
	While a container repository is a collection of related container images used to manage, pull and push images, a container registry is a collection of repositories
	made to store container images.

DOCKER OBJECTS

	- Docker Images
	- Docker Containers
 	- Docker Volumes
	- Docker Networks
	- Docker Swarm Nodes and Services.
