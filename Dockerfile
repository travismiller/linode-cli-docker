FROM python:3-slim

RUN pip install linode-cli

RUN useradd -ms /bin/bash linode
USER linode
WORKDIR /home/linode

ENTRYPOINT [ "linode-cli" ]
