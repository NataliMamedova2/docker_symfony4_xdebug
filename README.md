# docker_symfony4_xdebug

        Installation
	
1.Create a .env from the .env.dist file. 
Adapt it according to your symfony application

  cp .env.dist .env
  cp application/.env.dist application/.env

2. Build/run containers with (with and without detached mode)

   $ docker-compose build
   $ docker-compose up -d

3. Update your system host file (add template.hubber.local)
# UNIX only: get containers IP address and update host (replace IP according to your configuration)
   $ docker network inspect bridge | grep Gateway

4. # unix only (on Windows, edit C:\Windows\System32\drivers\etc\hosts)
$ sudo echo "171.17.0.1 template.hubber.local" >> /etc/hosts

5. Xdebug is config your IDE to connect port 9001 and id key PHPSTORM
