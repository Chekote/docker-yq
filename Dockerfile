FROM chekote/alpine:latest

RUN set -eux; \
    #
    # Update all packages
    apk update; \
    apk upgrade; \
    #
    # Install yq
    apk add yq; \
	#
    # verify that the binary works
	su-exec echo 'message: It works!' | yq .message; \
