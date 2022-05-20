FROM node:latest

RUN apt-get update && apt-get install -y bash
RUN npm install -g javascript-obfuscator

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]