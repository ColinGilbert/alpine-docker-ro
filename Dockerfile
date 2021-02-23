FROM alpine/git

RUN mkdir /git-out \
&& adduser -D -s /bin/sh -g "git user" git-user

WORKDIR /git-out

USER git-user

ENTRYPOINT git clone ../git .
