FROM mesosphere/aws-cli:1.14.5

RUN apk -v --update add bash jq

ADD ./deploy-apigw /bin

RUN chmod a+x /bin/deploy-apigw

ENTRYPOINT /bin/deploy-apigw
