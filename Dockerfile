FROM registry.fedoraproject.org/fedora:latest

RUN dnf install -y --nodocs --setopt=install_weak_deps=false \
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
        patch \
        podman-remote \
        procps-ng \
        python3 \
        python3-pip \
        ripgrep \
        tini \
        unzip \
        vim-enhanced \
        wget \
        yq \
    && dnf clean all

ENV PATH="/root/.opencode/bin:${PATH}"

EXPOSE 3080 4097
WORKDIR /root
ENTRYPOINT ["tini", "--"]
CMD ["opencode", "serve", "--hostname", "0.0.0.0", "--port", "4097"]
