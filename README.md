# Debian 12 (Bookworm) extended Docker image with Golang

Extended the official Debian 12 (Bookworm) image with Golang installation

Base image: 
- **debian:bookworm-slim**

Extended with these packages:
- [golang](https://go.dev/) (version: [1.22.5](https://go.dev/dl/))

Image available at [Docker Hub](https://hub.docker.com/r/adamweb92/debian-go). You can get it with the following command:

```bash
docker pull adamweb92/debian-go
```