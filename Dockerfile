FROM python:3.9-slim

RUN apt-get update && apt-get install -y git

RUN pip install rns lxmf

# make config dirs
RUN mkdir /root/.reticulum/
RUN mkdir /root/.lxmd/

# copy the configs
COPY ./reticulum/config /root/.reticulum/
COPY ./lxmd/config /root/.lxmd/

WORKDIR /home/root/

CMD ["lxmd"]
