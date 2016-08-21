FROM elasticsearch:2.3.5
WORKDIR /usr/share/elasticsearch

ENV ES_IK_VERSION 1.9.5
RUN curl -o elasticsearch-analysis-ik-${ES_IK_VERSION}.zip -L -e  ';auto' https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${ES_IK_VERSION}/elasticsearch-analysis-ik-${ES_IK_VERSION}.zip && \
	mkdir -p plugins/ik/ && \
	unzip elasticsearch-analysis-ik-${ES_IK_VERSION}.zip -d plugins/ik/ && \
	rm -f elasticsearch-analysis-ik-${ES_IK_VERSION}.zip

COPY config plugins/ik/config/

RUN chown -R elasticsearch:elasticsearch plugins/ik
