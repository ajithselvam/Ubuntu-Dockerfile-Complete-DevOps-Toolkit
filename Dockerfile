FROM ubuntu:22.04

LABEL maintainer="AJITH SELVAM N"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    # Network & Scanning
    nmap \
    netcat \
    net-tools \
    iputils-ping \
    traceroute \
    dnsutils \
    curl \
    wget \
    # Development
    git \
    vim \
    nano \
    build-essential \
    # Languages
    python3 \
    python3-pip \
    golang-go \
    # Container & Cloud Tools
    docker.io \
    # Database Clients
    postgresql-client \
    mysql-client \
    redis-tools \
    # System Tools
    htop \
    tmux \
    tree \
    jq \
    unzip \
    zip \
    # Security
    openssh-client \
    openssl \
    gnupg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["bash"]
