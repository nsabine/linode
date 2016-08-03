FROM registry.access.redhat.com/rhscl/python-35-rhel7
MAINTAINER Nick Sabine <nsabine@gmail.com>

RUN /opt/rh/rh-python35/root/usr/bin/pip install schedule

WORKDIR /code/
COPY LinodeDynDNS.py /code/LinodeDynDNS.py

ENV RESOURCE "000000"
ENV DOMAIN "000000"
ENV KEY "abcdefghijklmnopqrstuvwxyz"
ENV GETIP  "http://icanhazip.com/"
ENV API "https://api.linode.com/api/?api_key={0}&resultFormat=JSON"
ENV DEBUG "True"

CMD ["/opt/rh/rh-python35/root/usr/bin/python", "/code/LinodeDynDNS.py"]
