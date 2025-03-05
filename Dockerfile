#FROM registry.redhat.io/rhel8/nodejs-16
FROM default-route-openshift-image-registry.apps.ocp4.example.com/demo/nodejs-16
ENV APP_ROOT=/opt/app-root

WORKDIR $APP_ROOT

COPY app.js .
COPY package.json .

RUN npm install

EXPOSE 8080

CMD ["node", "app.js"]
