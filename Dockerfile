FROM python
MAINTAINER Nick Sabine <nsabine@gmail.com>

RUN pip install schedule

WORKDIR /code/
COPY LinodeDynDNS.py /code/LinodeDynDNS.py

ENV RESOURCE "000000"
ENV DOMAIN "000000"
ENV KEY "abcdefghijklmnopqrstuvwxyz"
ENV GETIP  "http://icanhazip.com/"
ENV API "https://api.linode.com/api/?api_key={0}&resultFormat=JSON"
ENV DEBUG "True"

CMD ["python3", "/code/LinodeDynDNS.py"]
