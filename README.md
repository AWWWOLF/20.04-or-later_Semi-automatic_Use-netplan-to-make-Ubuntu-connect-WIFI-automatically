### When I was trying to connect my 20.04 ubuntu server to my university's WIFI (because there isn't any net opening my dorm), sadly I found it needs certification and the configuration file needs to write a lot. Firstly, I intended to use the hotspot from my mobile to download a desktop version then connect the WIFI with GUI, however, somehow my NIC interface is disable. I tried every solution I found but failed.
### After that I tried to use the same way as what I do to connect hotspot. It can be bothered to write the configuration file every time, and I don't want to do this again and again when I set another Ubuntu server. Thus, I write this script. It is very simple, more like a suggestion of another way to connect WIFI. By using it, you can connect your Ubuntu server to WIFI faster.
### Now this script achieved connect Ubuntu server to WIFI which usually are set at homes (needn't certification), and at universities (which need certification, the connection succeeded in my school, BUAA). Thanks to this update in 20.04, as long as the system is running, it will find and connect to the WIFI automatically. I think it is the best solution of WIFI connection than using other weird scripts until now.
### This script mainly references to this: [https://github.com/canonical/netplan/blob/main/examples/wireless.yaml](url). 
### If you want to write a similar script for another type of WIFI, I suggest reading it.
### After using USB or git clone to import the script, use:
`sudo chmod +x ubuntu_network.sh`  
`bash ubuntu_network.sh`
### When it starts to work, type the right informations it needs.
### Done!
