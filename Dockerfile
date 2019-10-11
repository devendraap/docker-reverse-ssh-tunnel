FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y openssh-server systemd
RUN systemctl enable ssh
RUN systemctl start ssh
RUN echo "GatewayPorts yes" >> /etc/ssh/sshd_config
RUN service ssh start

# Usage:
# ssh -R <remote_server_port>:localhost:<local_port_to_forward> <remote_server_ip>
