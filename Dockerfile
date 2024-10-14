FROM ubuntu:latest
LABEL maintainer="Sowmyashree"
RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/*
# Copy the script to the container
COPY ./Helloapp.sh /
RUN chmod +x /Helloapp.sh
# Set the entrypoint to the script with CMD arguments
ENTRYPOINT ["/Helloapp.sh"]
