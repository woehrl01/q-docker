FROM debian:buster
RUN apt-get update \
    && apt-get install -y wget \
    && wget -O q.deb https://github.com/harelba/q/releases/download/2.0.19/q-text-as-data_2.0.19-2_amd64.deb \
    && dpkg -i q.deb \
    && rm -rf q.deb

WORKDIR /q

ENTRYPOINT ["q"]