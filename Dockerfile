FROM node:20

RUN apt update && apt install -y ffmpeg # if needed for bot
WORKDIR /app
RUN git clone https://github.com/lyfe00011/levanter.git .
RUN yarn install

CMD ["node", "index.js"]
