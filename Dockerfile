FROM debian:bookworm-slim

LABEL maintainer="dev@adampweb.com"

# Update the packages list and install those are required
RUN apt-get update && \
    apt-get install -y wget ca-certificates && \
    rm -rf /var/lib/apt/lists/*


# Define the required version of Go and the source URL
ENV GOLANG_VERSION="1.22.5"
ENV GOLANG_DOWNLOAD_URL="https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz"

# Download and extract the archive to the destination directory
RUN wget -q $GOLANG_DOWNLOAD_URL -O go.tar.gz && \
    tar -C /usr/local -xzf go.tar.gz && \
    rm go.tar.gz

# Add the Go path to the global PATH environment variable
ENV PATH="/usr/local/go/bin:$PATH"

CMD ["bash"]