# FROM docker.io/node:alpine
FROM docker.io/node:alpine
LABEL source=https://github.com/MarcPartensky/cli-typer
LABEL credits=https://github.com/balzss/cli-typer

WORKDIR /opt
COPY data /opt/data
COPY app.js package.json ./

RUN npm i

ENTRYPOINT [ "node", "/opt/app.js" ]
