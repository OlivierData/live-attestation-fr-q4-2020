# docker build --tag live-attestation:1.0 .

FROM centos:centos8

RUN echo $USER

RUN yum install -y git
RUN yum install -y npm
RUN git clone https://github.com/OlivierData/live-attestation-fr-q4-2020.git

WORKDIR ./live-attestation-fr-q4-2020 

RUN npm i
ENTRYPOINT npm start
RUN npm run build:dev
ENTRYPOINT npx serve dist

# docker run --publish 5000:5000 live-attestation:1.0
