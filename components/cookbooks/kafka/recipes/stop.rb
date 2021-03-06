
service "zookeeper" do
  provider Chef::Provider::Service::Systemd
  service_name 'zookeeper'
  supports  :restart => true, :status => true, :stop => true, :start => true
  action :stop
  only_if { File.exists?('/etc/init.d/zookeeper') }
end

service "kafka" do
  provider Chef::Provider::Service::Systemd
  service_name 'kafka'
  supports  :restart => true, :status => true, :stop => true, :start => true
  action :stop
end
