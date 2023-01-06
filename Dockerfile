# GoToSocial Image
FROM superseriousbusiness/gotosocial:latest

# Dependencies
RUN apk add bash fuse

# FUSE Config
ADD fuse.conf /etc/

# LiteFS Config
ADD litefs.yml /etc/

# GoToSocial Config
ADD config.yaml /gotosocial/

# LiteFS Bin
COPY --from=flyio/litefs:0.3 /usr/local/bin/litefs /usr/local/bin/litefs

# LiteFS Mount
ENTRYPOINT [ "litefs", "mount", "--" ]

# GoToSocial Start
CMD [ "/gotosocial/gotosocial", "server", "start", "--config-path", "/gotosocial/config.yaml" ]
