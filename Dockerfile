FROM alpine:latest

RUN apk add git

ADD https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.4.0/kustomize_v3.4.0_linux_amd64.tar.gz /tmp/kustomize.tar.gz

RUN tar -xvzf /tmp/kustomize.tar.gz -C /usr/local/bin

WORKDIR /kustomize