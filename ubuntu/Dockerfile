ARG VERSION=latest

FROM ubuntu:${VERSION}

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    python \
    python-pip \
  && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
  && add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable" \
  && apt-get update && apt-get install -y docker-ce \
  && pip install --upgrade pip docker \
  && apt-get clean

