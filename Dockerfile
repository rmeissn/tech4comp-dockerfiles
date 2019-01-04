FROM node:11-slim
LABEL maintainer="Roy Meissner <meissner@informatik.uni-leipzig.de>"

RUN apt update
RUN apt install python make build-essential

RUN apt autoremove -y && apt -y clean && \
		rm -rf /var/lib/apt/lists/*