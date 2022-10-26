sudo su -
cd /home/
mkdir java
cd java
yum install wget -y
wget https://builds.openlogic.com/downloadJDK/openlogic-openjdk-jre/8u342-b07/openlogic-openjdk-jre-8u342-b07-linux-x32.tar.gz

tar -xvf openlogic-openjdk-jre-8u342-b07-linux-x64.tar.gz
ll
cd openlogic-openjdk-jre-8u342-b07-linux-x64
pwd
cd /etc/profile.d
ll
touch java.sh
echo export JAVA_HOME=/home/java/openlogic-openjdk-jre-8u342-b07-linux-x64 >>java.sh
echo export PATH=${JAVA_HOME}/bin:${PATH} >>java.sh
./java.sh
cd /home/
mkdir maven
cd maven
wget https://dlcdn.apache.org/maven/maven-3/3.8.6/source/apache-maven-3.8.6-src.tar.gz
tar -xvf  apache-maven-3.8.6-src.tar.gz
cd apache-maven-3.8.6
ll
pwd
cd /etc/profile.d/
touch maven.sh
echo export M2_HOME=/home/maven/apache-maven-3.8.6 >>maven.sh
echo export PATH=${M2_HOME}/bin:${PATH}>>maven.sh 
./maven.sh
cd /home/
mkdir git
cd git
yum install git -y

sudo su -

sudo wget -O /etc/yum.repos.d/jenkins.repo \https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum upgrade

sudo yum install jenkins -y

sudo systemctl enable jenkins

sudo systemctl start jenkins

yum install httpd -y
systemctl enable httpd
systemctl start httpd
systemctl status httpd