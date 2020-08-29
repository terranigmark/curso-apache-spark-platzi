# curso-apache-spark-platzi
Repositorio utilizado para el Curso de Apache Spark en Platzi


## Ejecucion de maquina virutal con Vagrant

Si deseas, en lugar de instalar nativamente o configurar la maquina virutal a mano, puedes cargar un archivo de Vagrant

El archivo Vagrant y bootstrap se encuentran dentro del a carpeta configuracion

## Ejecutar

Es necesario tener instalado vagrant y virtualbox.

```console
username@hostname:~$ vagrant up
```

Inicializará vagrant e instalará los paquetes necesarios para poder ejecutar Spark2 con Python3.

Una vez instalado, es necesario conectarse por ssh para levantar jupyter notebook. Primero requerimos la ip pública, por lo que con el siguiente comando conocemos la ip:

```console
username@hostname:~$ vagrant ssh -c "hostname -I | cut -d' ' -f2" 2>/dev/null
```
Una vez obtenida, ejecutamos, (el usuario y contraseña son el mismo): 

```console
username@hostname:~$ ssh -L 8888:localhost:8888 vagrant@ipObtenida
vagrant@ipObtenida's password: 

vagrant@spark:~$ jupyter-notebook --no-browser
[I 23:42:05.839 NotebookApp] JupyterLab extension loaded from /home/vagrant/anaconda3/lib/python3.7/site-packages/jupyterlab
[I 23:42:05.839 NotebookApp] JupyterLab application directory is /home/vagrant/anaconda3/share/jupyter/lab
[I 23:42:05.842 NotebookApp] Serving notebooks from local directory: /home/vagrant
[I 23:42:05.842 NotebookApp] The Jupyter Notebook is running at:
[I 23:42:05.842 NotebookApp] http://localhost:8888/?token=5b1546200a688a72d662b7475d69e9a3effaaf653b5ab4fd
[I 23:42:05.842 NotebookApp]  or http://127.0.0.1:8888/?token=5b1546200a688a72d662b7475d69e9a3effaaf653b5ab4fd
[I 23:42:05.842 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).

```

Y finalmente daremos doble click sobre cualquiera de las ligas que nos expulse jupyter-notebook --no-browser. Nos abrirá una ventana en nuestro navegador por defecto una pestaña de juputer anaconda listo para trabajar.


## Notas sobre Vagrant

Una vez descargada la máquina virtual, podemos interactuar con ella conectándonos con ayuda de ssh. Aun que podemos conectarnos directamente a la máquina virutal, esta se encuentra ejecutandose en segundo plano. Es altamente recomendable que continue así, ya que vagrant posee lo necesario para un despliege completo. 

Con el siguiente ejemplo podemos conectarnos a la máquina virutal:

```console
username@hostname:~$ vagrant ssh
```

Si deseamos terminar la máquna virtual bastará con :

```console
username@hostname:~$ vagrant halt
```

Por otro lado si ya no deseamos mantener la máquina virutal en nuestro disco duro podemos eliminarla con:

```console
username@hostname:~$ vagrant destroy
