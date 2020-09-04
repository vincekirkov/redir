FROM ubuntu:20.04

ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y
RUN apt-get install redir -y
RUN apt-get install nano -y
ENTRYPOINT ["/bin/sh", "-c", "/usr/bin/redir --laddr=0.0.0.0 --lport=$localport  --caddr=$address --cport=$remoteport"]
