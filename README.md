# CentOS Apache Dockerfile
##### Dockerfile for basic Apache (httpd) server on CentOS distro.

## Download source code.
Clone repo: `git clone https://github.com/ianagpawa/centos-httpd.git`

## Local Development
### Prerequesites
#### Windows
Install `Docker Desktop on Windows` (stable):
* [Download from DockerHub and follow instructions](https://hub.docker.com/editions/community/docker-ce-desktop-windows/)
    * May require tweaking Virtualization in BIOS, but is typically not needed on latest systems.

### Build image
In terminal, navigate to the folder directory where `centos-httpd` was cloned.\
    Use command: `docker build --tag <image-name>:<version-number> .`\
    e.g.: `docker build --tag httpd-centos:1.0 .`

### Run image as a container
Use command: `docker run --detach --publish <port-number> --name <container-name> <image-name>:<version-number>`\
e.g.: `docker run --detach --publish 8000:80 --name server-container centos-httpd:1.0`

### View in browser
Open browser to `http://localhost:8000/`

### Stop running container
Use command: `docker stop <container-name>`\
e.g.: `docker stop server-container`

### List containers
Use command: `docker container ls`.

### List images
Use command: `docker image ls`

### Remove container
Use command: `docker rm <container-name>`\
e.g.: `docker rm server-container`

### Remove image
Use command: `docker rmi <image-name>:<version-number>`\
e.g.: `docker rmi centos-httpd:1.0`


## Creator

**Ian Agpawa**
 agpawaji@gmail.com