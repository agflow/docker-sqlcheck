FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends wget && \
    wget --no-check-certificate https://github.com/jarulraj/sqlcheck/releases/download/v1.2/sqlcheck-x86_64.deb && \
    dpkg -i sqlcheck-x86_64.deb && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["sqlcheck"]
