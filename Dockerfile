FROM alpine:3.19.1

ARG grpcurl_version=1.9.1

# hadolint ignore=DL3018
RUN apk --update --no-cache add bash curl gum jq yq netcat-openbsd

### grpcurl installation
RUN wget -nv https://github.com/fullstorydev/grpcurl/releases/download/v${grpcurl_version}/grpcurl_${grpcurl_version}_linux_x86_64.tar.gz && \
    tar -xvf grpcurl_${grpcurl_version}_linux_x86_64.tar.gz && \
    mv grpcurl /usr/local/bin/grpcurl && \
    rm grpcurl_${grpcurl_version}_linux_x86_64.tar.gz

CMD ["/bin/bash"]
