FROM ubuntu:20.04

ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y
RUN apt-get install redir -y
RUN apt-get install nano -y
RUN apt-get install wget -y
RUN wget https://raw.githubusercontent.com/vincekirkov/redir/master/redir.sh
RUN chmod +x redir.sh
RUN mv redir.sh /redir.sh
ENTRYPOINT ["/redir.sh"]
