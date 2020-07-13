## install npm && puppeteer## 必要依赖 libXScrnSaver 
RUN yum -y install libXScrnSaver
## install node 
RUN wegt https://nodejs.org/dist/v10.16.0/node-v10.16.0-linux-x64.tar.xz \
    && tar xvf /usr/loacl/node-v10.16.0-linux-x64.tar.xz --directory /usr/local \
    && ln -s /usr/local/node-v10.16.0-linux-x64/bin/node /usr/bin/node \
    && ln -s /usr/local/node-v10.16.0-linux-x64/bin/npm /usr/bin/npm \
    && ln -s /usr/local/node-v10.16.0-linux-x64/bin/npx /usr/bin/npx
## install puppeteer 
RUN npm config set puppeteer_download_host=https://npm.taobao.org/mirrors
RUN mkdir -p /home/app
WORKDIR /home/app
RUN npm i puppeteer