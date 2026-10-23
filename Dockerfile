FROM registry.fedoraproject.org/fedora:latest

RUN dnf install -y --nodocs --setopt=install_weak_deps=false \
        bubblewrap \
        cmake \
        diffutils \
        file \
        fish \
        gcc \
        gcc-c++ \
        gh \
        git \
        git-lfs \
        golang \
        gopls \
        jq \
        less \
        make \
        nano \
        nodejs \
        npm \
        openssl \
        patch \
        podman-remote \
        procps-ng \
        python3 \
        python3-pip \
        ripgrep \
        sqlite \
        tini \
        unzip \
        vim-enhanced \
        wget \
        yq \
        zip \
    && dnf clean all

WORKDIR /root
ENTRYPOINT ["tini", "--"]
CMD ["fish"]
