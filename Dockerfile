FROM ubuntu:14.04.3
MAINTAINER Jeremy Chang <jeremychang@qnap.com>

RUN \
  apt-get update && \
  apt-get install -y software-properties-common && \
  apt-get update && \
  apt-get install -y build-essential unzip curl wget git realpath moreutils fakeroot && \
  rm -rf /var/lib/apt/lists/*

RUN ln -s $(which awk) /bin/awk

ADD src /src
WORKDIR /src
RUN make
WORKDIR /

ADD QDK /QDK
ADD app.sh /
ENTRYPOINT ["/app.sh"]
