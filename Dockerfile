# Based on: https://codingcompetitions.withgoogle.com/kickstart/faq#platform
# and https://github.com/microsoft/vscode-dev-containers/blob/v0.134.0/containers/cpp/.devcontainer/base.Dockerfile
FROM debian:9.8

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends gcc g++ cppcheck valgrind gdb \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*
