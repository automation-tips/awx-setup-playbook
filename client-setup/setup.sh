#!bin/sh -ex

echo "Install setup modules ..."

### make base directory
sudo mkdir /usr/local/
sudo mkdir /usr/local/bin/

### Adding PATH
echo 'export PATH=/usr/local:$PATH' >> ~/.bash_profile
echo 'export PATH=/usr/local/bin:$PATH' >> ~/.bash_profile

### Install Xcode devtools
xcode-select --install

### Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
source ~/.bash_profile
brew -v
brew update

# Install Ansible
brew install ansible
