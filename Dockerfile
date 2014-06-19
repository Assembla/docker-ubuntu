FROM dockerfile/ubuntu

RUN \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get \
        -o Dpkg::Options::="--force-confnew" \
        --force-yes \
        -fuy dist-upgrade && \
    apt-get clean
