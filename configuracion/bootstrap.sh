#!/usr/bin/env bash

echo 'export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64" '>> /home/vagrant/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> /home/vagrant/.bashrc
echo 'export SPARK_HOME="/home/vagrant/spark"  ' >> /home/vagrant/.bashrc
echo 'export PATH=$SPARK_HOME:$PATH  ' >> /home/vagrant/.bashrc
echo 'export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH  ' >> /home/vagrant/.bashrc
echo 'export PYSPARK_DRIVER_PYTHON="jupyter"  ' >> /home/vagrant/.bashrc
echo 'export PYSPARK_DRIVER_PYTHON_OPTS="notebook"  ' >> /home/vagrant/.bashrc
echo 'export PYSPARK_PYTHON=python3  ' >> /home/vagrant/.bashrc
echo 'export PATH=/home/vagrant/anaconda3/bin:$PATH '>> /home/vagrant/.bashrc

sleep 10;

\n | sudo add-apt-repository ppa:openjdk-r/ppa;
sudo apt-get -y update;
sudo apt-get -y upgrade;

sudo apt-get -y install openjdk-8-jre;
sudo apt-get -y install python3;
sudo apt-get -y install scala;
sudo apt-get -y install python3-pip;

sudo pip3 install  py4j;

wget –quiet https://downloads.apache.org/spark/spark-2.4.6/spark-2.4.6-bin-hadoop2.7.tgz;
tar -xvf spark-2.4.6-bin-hadoop2.7.tgz;
mv spark-2.4.6-bin-hadoop2.7 spark;
rm spark-2.4.6-bin-hadoop2.7.tgz;

wget –quiet https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh;
sh Anaconda3-2020.02-Linux-x86_64.sh -b -f -p /home/vagrant/anaconda3;
rm Anaconda3-2020.02-Linux-x86_64.sh
sudo chown -R vagrant:vagrant anaconda3 
conda install py4j;

source /home/vagrant/.bashrc;

jupyter notebook --no-browser --port=8888
