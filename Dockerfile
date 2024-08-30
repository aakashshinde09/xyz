FROM almalinux:latest
WORKDIR /src
EXPOSE 3010
COPY . /src

RUN dnf update -y
RUN dnf module install nodejs:18 -y

RUN dnf install ./wkhtmltox-0.12.6.1-2.almalinux9.x86_64.rpm -y

RUN npm install -g yarn
RUN yarn install

CMD ["npm", "start"]
