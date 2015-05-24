# Socket.io - Chat

This repository will be used to implement a chat system using Socket.io.

## Setting up the environment

In order to set up the environment:

1. Download vagrant from this [link](http://www.vagrantup.com/downloads.html).

2. Download virtual box from this [link](https://www.virtualbox.org/wiki/Downloads).

3. Once both are installed clone this repository to your machine with:

		git clone --recursive git@github.com:GianlucaCandiotti/socket.io-chat.git

4. If you are working on a Windows environment, run this command in a command prompt as administrator in order to allow all kinds of symbolic links to be created on the computer ( Omit this step if you have done this before and skip to step 6 ) :

		fsutil behavior set SymlinkEvaluation L2L:1 R2R:1 L2R:1 R2L:1

5. Reboot your computer to apply changes.

6. Open a terminal and run the command **vagrant up** from the folder *socket.io-chat/vagrant-env/*.

7. Once the virtual machine's been provisioned, run **vagrant ssh** to connect to the terminal.

8. The sync folder inside the VM is */vagrant* and inside the host machine it looks for *socket.io-chat/app*.

9. Use the guest machine's private network **192.168.33.10** that allows host only access and port **8080** to start working.

- - -

**This repository uses [node-env](https://github.com/GianlucaCandiotti/node-env) to run the environment. Refer to its documentation to know more.**