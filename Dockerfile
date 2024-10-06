FROM node:lts-buster

RUN apt-get update && \
    apt-get install -y ffmpeg webp git && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/papaigwe/QUEEN-LULU-MD lulu-md

WORKDIR /lulu-md

RUN yarn install --production

RUN yarn global add pm2

CMD ["npm", "start"]
