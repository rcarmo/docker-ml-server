FROM ubuntu:16.04
RUN apt update \
 && apt dist-upgrade -y \
 && apt install -y apt-utils apt-transport-https wget \
 && wget http://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb -O /tmp/prod.deb \
 && dpkg -i /tmp/prod.deb \
 && rm -f /tmp/prod.deb \
 && apt update \
 && apt install -y microsoft-mlserver-all-9.2.1 

#RUN bash /opt/microsoft/mlserver/9.2.1/bin/R/activate.sh
