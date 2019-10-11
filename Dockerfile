FROM ubuntu:12.04

RUN apt-get install openssh-server

RUN systemctl enable ssh
RUN systemctl start ssh
RUN echo "GatewayPorts yes" >> /etc/ssh/sshd_config
RUN service ssh ssh;
RUN tail -f /dev/null;

# Usage:
# ssh -R <remote_server_port>:localhost:<local_port_to_forward> <remote_server_ip>