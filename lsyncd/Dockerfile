FROM alpine

RUN apk update
RUN apk add lsyncd sshpass openssh-client

COPY lsyncd.conf.lua /etc/lsyncd/
COPY wait-for.sh /opt/
RUN chmod +x /opt/wait-for.sh

CMD ["/opt/wait-for.sh", "target1:22", "--", "/opt/wait-for.sh", "target2:22", "--", "/usr/bin/lsyncd", "/etc/lsyncd/lsyncd.conf.lua"]
