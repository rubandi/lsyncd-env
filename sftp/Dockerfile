FROM atmoz/sftp:alpine

COPY sshd_config /etc/ssh/sshd_config

RUN apk update
RUN apk add rsync
