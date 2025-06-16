Thanks! 

This is a collaboration effort to utilize the redact.dev program on unraid as a persistent image. 

You will need a one item beforehand. Make sure you have Docker Compose Manager available and in your docker tab. 
      ----> https://forums.unraid.net/topic/114415-plugin-docker-compose-manager/

Make sure you do the following steps: 
1. Open terminal and copy the following code to run. Or download into your dir of choice. 
    
cd /mnt/user/appdata/ 
git clone https://github.com/IPGPrometheus/Un-Redact.git
cd /mnt/user/appdata/Un-Redact 
chmod +x startapp.sh

3. Head over to the Docker tab. Click Compose. 
4. Enter the following: 
    Un-Redact (or whatever name you want) 
  click advanced
    /mnt/user/appdata/Un-Redact

click compose up 

ENJOY :) 
