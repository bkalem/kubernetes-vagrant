Vagrant.configure("2") do |config|

  config.vm.provision "shell", path: "install-docker.sh"
  config.vm.provision "shell", path: "install-kubernetes.sh"
  config.vm.provision "shell", path: "custom-linux.sh"

  config.vm.define "kubemaster" do |kubemaster|
    kubemaster.vm.box = "centos/7"
    kubemaster.vm.hostname = "master.formini.local"
    kubemaster.vm.network "private_network", ip: "172.15.20.10"
    kubemaster.vm.provider "virtualbox" do |v|
      v.name = "kubemaster"
      v.cpus = 2
      v.memory = 2048
    end
  end
  
  workers_number = 3

  # déploiment des workers
  (1..workers_number).each do |i|
    config.vm.define "kubeworker#{i}" do |kubeworker| 
      kubeworker.vm.box = "centos/7"
      kubeworker.vm.hostname = "worker#{i}.formini.local"
      kubeworker.vm.network "private_network", ip: "172.15.20.10#{i}"
      kubeworker.vm.provider "virtualbox" do |v|
        v.name = "kubeworker#{i}"
        v.cpus = 1
        v.memory = 1024
      end
    end
  end

end
