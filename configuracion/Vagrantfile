Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64" #Base snapshot
  config.vm.box_version = "20190514.0.0" #Ubuntu version
  config.vm.hostname = "spark" #VM hostname
  config.vm.network "forwarded_port", guest:8888, host:8888 #Public port
  config.vm.network "public_network", type: "dhcp" #Public IP

  #config.vm.disk :disk, size: "20GB", primary: true #Disk size
  #config.vm.synced_foler "./data", "/vagrant_data" #Share folder
 
  config.vm.provider "virtualbox" do |vb| #Provider
    vb.gui = false #By default no gui, all for ssh or http
    vb.memory = "3092" #RAM
    vb.cpus = 4 #Number of vcores
    vb.name = "sparkCourse"
  end

  config.vm.provision :shell, path: "bootstrap.sh" #Needed programs
end
