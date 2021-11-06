FROM ubuntu:latest

# update
RUN apt update

# setup
RUN apt -y install build-essential

# other tools
RUN apt -y install curl
RUN apt -y install git

# git config
RUN git config --global http.sslBackend gnutls
# disable git ssl
ENV GIT_SSL_NO_VERIFY true

# proxy
ENV http_proxy "http://host.docker.internal:10809"
ENV https_proxy "http://host.docker.internal:10809"