#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install scala@2.11 -y
brew install wget -y
wget https://archive.apache.org/dist/kafka/0.10.0.1/kafka_2.11-0.10.0.1.tgz 
tar -zxvf kafka_2.11-0.10.0.1.tgz
mv kafka_2.11-0-10-0-1 /usr/local/bin/kafka
echo "export KAFKA_HOME=/usr/local/bin/kafka" >> /etc/profile
echo "export PATH=$PATH:$KAFKA_HOME:$KAFKA_HOME/bin"
