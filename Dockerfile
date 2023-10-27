# Use an official lightweight Alpine image as a parent image
FROM alpine:latest

# Install git and other necessary tools
RUN apk add --no-cache git

WORKDIR /app

# By default, run a simple git version command to check that git is working
COPY . .

RUN chmod +x docker-journal.sh

CMD [ "/bin/sh", "docker-journal.sh" ]
