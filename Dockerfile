FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y --reinstall nfs-kernel-server systemd
RUN apt-get install -y nano curl git htop man
RUN mkdir -p /mnt/nfs
RUN chown nobody:nogroup /mnt/nfs
RUN chmod 777 /mnt/nfs

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
