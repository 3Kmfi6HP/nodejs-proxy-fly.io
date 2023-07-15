FROM node:latest
ENV PORT=7860
ENV UUID=d342d11e-d424-4583-b36e-524ab1f0afa4
# EXPOSE 7860
RUN npm i -g @3kmfi6hp/nodejs-proxy
CMD ["nodejs-proxy"]
