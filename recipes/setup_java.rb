execute "add java repository" do
  command "add-apt-repository -y ppa:webupd8team/java"
end

# accepts oracle license :facepalm:
execute "accepts oracle license" do
  command "echo 'oracle-java8-installer shared/accepted-oracle-license-v1-1 select true' | debconf-set-selections"
end

execute "apt-get update" do
  command "apt-get update"
end

package "oracle-java8-installer" do
  action :install
end