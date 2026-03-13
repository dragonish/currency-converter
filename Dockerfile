FROM giterhub/darkhttpd:latest

LABEL maintainer="dragonish"

COPY src /www/

EXPOSE 80

ENTRYPOINT [ "/darkhttpd" ]
CMD [ "/www" ]
