#!/bin/bash
echo "Begin to work……"
echo "Show the interfaces"
ifconfig
echo "Interface's name: (usually wlan0, wlp1s0)"
read interfacename
cd /etc/netplan/
echo "Show the documents"
ls
echo "document's name: (usually shorter)"
read name
echo "Need a catification?"
echo -n "[y/n]"
read decision
if [ "$decision" == "y" ]
then
    echo "WIFI's name:"
    read wifiname
    echo "User's name:"
    read username
    echo "Password:"
    read password
    cat>$name.yaml<<EOF
        wifis:
            $interfacename:
                dhcp4: true
                optianal: yes
                        access-points:
                            "$wifiname":
                                auth:
                                    key-management: eap
                                    methods: ttls
                                    anonymous-identity: "$username"
                                    identity: "$username"
                                    password: "$password"
EOF
else
    echo "WIFI's name:"
    read wifiname
    echo "Password:"
    read password
    cat>$name.yaml<<EOF
        wifis:
            $interfacename:
                dhcp4: true
                optianal: yes
                        access-points:
                            "$wifiname":
                                password: "$password"
EOF
fi
sudo netplan apply
echo "Work done!"