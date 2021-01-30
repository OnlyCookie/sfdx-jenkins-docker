FROM jenkins/jenkins:lts

USER root

RUN apt-get upgrade && \
	apt-get update && \
	apt-get install -y tar wget
	
RUN wget -O /tmp/sfdx.tar.xz https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz && \
	tar -xvf /tmp/sfdx.tar.xz -C /tmp && \ 
	/tmp/sfdx-cli*/install && \
	exit

USER jenkins

RUN sfdx update