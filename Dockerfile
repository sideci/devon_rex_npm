FROM quay.io/actcat/devon_rex_base:1.3.1

ENV NODE_VERSION=11.15.0
ENV NPM_VERSION=6.10.1
ENV YARN_VERSION=1.17.3

RUN curl -sSL https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz \
    | tar -C /usr/local -x --xz --strip 1
RUN npm install -g npm@$NPM_VERSION
RUN curl -o- -sSL https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION
