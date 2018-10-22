#######
##𓀨####
#######
#Start simple
FROM python
RUN apt -qq -y update ; apt-get -qq -y install libldap2-dev libsasl2-dev ; apt-get clean
#Copy the shit here into the container
COPY requirements.txt /requirements.txt
#Take a crack at installing dependencies
RUN pip3 install -r /requirements.txt
