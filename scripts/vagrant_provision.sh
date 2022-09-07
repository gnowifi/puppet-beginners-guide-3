#!/bin/bash
# source /etc/lsb-release
# Not needed anymore as we're installing a specific version of Puppet for the purposes of the book
wget https://apt.puppetlabs.com/puppet5-release-bionic.deb
dpkg -i puppet5-release-bionic.deb
apt-get update
apt-get -y install git puppet-agent
echo 'Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/opt/puppetlabs/bin:/opt/puppetlabs/puppet/bin"' >/etc/sudoers.d/puppet
/opt/puppetlabs/puppet/bin/gem install gpgme --no-rdoc --no-ri
/opt/puppetlabs/puppet/bin/gem install hiera-eyaml-gpg --no-rdoc --no-ri
/opt/puppetlabs/puppet/bin/gem install r10k --no-rdoc --no-ri
