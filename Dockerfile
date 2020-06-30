FROM ubuntu:18.04
# Read the README.md for more details on the image configuration.
# You can use different baseline image or linux distribution 
# but you will likely need to change supporting tools installation and  environment settings

LABEL IICS Base Image for CI/CD Builds

# install needed packages 
RUN apt-get update && apt-get install -y \
    curl \
    ant \
    git \
    unzip && \
    curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" &&\
    unzip /tmp/awscliv2.zip -d /tmp &&\
    ./tmp/aws/install &&\
    rm -rf /tmp/aws &&\
    rm /tmp/awscliv2.zip
