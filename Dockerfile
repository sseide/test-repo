FROM alpine:3.15
LABEL org.opencontainers.image.source=https://github.com/OWNER/REPO
COPY startup.sh /
RUN apk update && apk add dumb-init
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/startup.sh"]

