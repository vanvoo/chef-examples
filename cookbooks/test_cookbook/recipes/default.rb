#
# Cookbook:: test_cookbook
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
execute "update-upgrade" do

  command "sudo apt-get update && sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' upgrade"

  action :run

  ip = ' 10.0.1.4/24' 

  mask = netmask(ip) # here we use the library method 

  Chef::Log.info("Netmask of #{ip}: #{mask}")


end
