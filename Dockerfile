FROM ubuntu:18.04

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y nfs-kernel-server
  apt-get install -y nano curl git htop mant && \
  mkdir -p /mnt/nfs && \
  chown nobody:nogroup /mnt/nfs && \
  chmod 777 /mnt/nfs

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
