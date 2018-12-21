FROM quay.io/actcat/devon_rex_base:1.0.9

ENV NODE_VERSION=11.5.0
RUN curl -sSL https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz \
    | tar -C /usr/local -x --xz --strip 1
