# awsjavakafka
aws java kafka ec2


# install java
sudo amazon-linux-extras install java-openjdk11

sudo yum install java-1.8.0-openjdk

alternatives --config java

# install maven

sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
mvn --version

https://gist.github.com/sebsto/19b99f1fa1f32cae5d00

# install kafka

https://dzone.com/articles/installing-and-running-kafka-on-an-aws-instance

# install confluent platform
https://www.baeldung.com/kafka-connectors-guide

https://docs.confluent.io/kafka-connect-s3-sink/current/overview.html

https://dzone.com/articles/installing-and-configuring-confluent-platform-kafk

# install git

#Create an EC2 instance with Amazon Linux 2 with internet access
#Connect to your instance using putty

#Perform a quick update on your instance:
sudo yum update -y

#Install git in your EC2 instance
sudo yum install git -y

#Check git ver

# install python and kafka-python
https://github.com/dpkp/kafka-python
https://aws.amazon.com/premiumsupport/knowledge-center/ec2-linux-python3-boto3/
https://towardsdatascience.com/3-libraries-you-should-know-to-master-apache-kafka-in-python-c95fdf8700f2

# Kafka — Idempotent Producer And Consumer
https://medium.com/@shesh.soft/kafka-idempotent-producer-and-consumer-25c52402ceb9


# install docker

https://techexpert.tips/apache-kafka/apache-kafka-installation-on-the-cloud-aws-ec2/



https://tecadmin.net/install-java-on-amazon-linux/
https://cloudaffaire.com/how-to-install-git-in-aws-ec2-instance/
