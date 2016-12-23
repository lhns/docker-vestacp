FROM lolhens/baseimage:latest
MAINTAINER LolHens <pierrekisters@gmail.com>


RUN apt-get update \
 && apt-get -y install \
      wget \
 && cd "/tmp" \
 && curl http://vestacp.com/pub/vst-install.sh | bash -s -- \
      --interactive no \
      --nginx yes \
      --apache yes \
      --phpfpm no \
      --vsftpd yes \
      --proftpd no \
      --exim yes \
      --dovecot yes \
      --spamassassin yes \
      --clamav yes \
      --named yes \
      --iptables yes \
      --fail2ban yes \
      --mysql no \
      --postgresql yes \
      --remi yes \
      --quota yes \
 && cleanimage

