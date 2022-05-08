#!/bin/bash

clear
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
clear='\033[0m'
bg_red='\033[0;41m'
bg_green='\033[0;42m'
bg_yellow='\033[0;43m'
bg_blue='\033[0;44m'
bg_magenta='\033[0;45m'
bg_cyan='\033[0;46m'
#echo -e "The color is: ${red}red${clear}!"
echo -e "${green} 
\t\t / ____|    | |             / ____|                    (_) |        
\t\t| |    _   _| |__   ___ _ _| (___   ___  ___ _   _ _ __ _| |_ _   _ 
\t\t| |   | | | | '_ \ / _ \ '__\___ \ / _ \/ __| | | | '__| | __| | | |
\t\t| |___| |_| | |_) |  __/ |  ____) |  __/ (__| |_| | |  | | |_| |_| |
\t\t \_____\__, |_.__/ \___|_| |_____/ \___|\___|\__,_|_|  |_|\__|\__, |
\t\t        __/ |                                                  __/ |
\t\t       |___/                                                  |___/ 
\t\t\t\t _  __  __          __   _  __ 
\t\t\t\t| |/ /  \ \        / /  | |/ _|
\t\t\t\t| ' /____\ \  /\  / /__ | | |_ 
\t\t\t\t|  <______\ \/  \/ / _ \| |  _|
\t\t\t\t| . \      \  /\  / (_) | | |  
\t\t\t\t|_|\_\      \/  \/ \___/|_|_|
${clear}
"

echo -e "${red}
\t\t ___         _      _   ___        _  __ __      __   _  __ 
\t\t/ __| __ _ _(_)_ __| |_| _ )_  _  | |/ /_\ \    / /__| |/ _|
\t\t\__ \/ _| '_| | '_ \  _| _ \ || | | ' <___\ \/\/ / _ \ |  _|
\t\t|___/\__|_| |_| .__/\__|___/\_, | |_|\_\   \_/\_/\___/_|_|  
\t\t              |_|           |__/                            
                                 
 ${clear}"

#echo -e " ${magenta}
#           \t\t 1)WebSite
#           \t\t 2)Port Scanner
 #          \t\t 3)BruteForce
#            ${clear}
#        "
# read -sp 'Enter Root Passord : ' rootPass
while true  
    do
        echo -e " ${magenta}\n\t\t0)Download Tool\n\t\t1)WebSite\n\t\t2)Port Scanner\n\t\t3)BruteForce\n\t\t4)Web Injection\n\t\t5)WebSite Scanner\n\t\t6)exit
            ${clear}
        "
        read -p 'Enter Number: ' chose
        if [ "$chose" -eq "0" ]
            then
                echo -e "${red}${bg_cyan}pleas Wait... ${clear}"
                mkdir K_Wolf_Cyber-Script
                cd K_Wolf_Cyber-Script
                sudo apt install hydra -y
                sudo apt install ffuf -y
                sudo apt install nmap -y
                sudo apt install assetfinder -y
                sudo apt install sqlmap -y
                sudo apt install wpscan -y
                sudo apt install httpx -y
                sudo apt install nuclei -y
                git clone https://github.com/defparam/smuggler.git

        elif [ "$chose" -eq "1" ]
            then
                while true
                    do
                        echo -e "${red}\t\t\t\t( WebSite )${clear}"
                        echo -e "${magenta} 
                    1)Sub-domain - Basic                  
                    2)Directory  
                    3)Parameter Fuzzing - GET
                    4)Parameter Fuzzing - GET Filter
                    5)Parameter Fuzzing - POST
                    6)Parameter Fuzzing - POST Filter
                    7)Value Fuzzing 
                    8)Value Fuzzing - Filters
                    ${clear}"
                        read -p 'Enter Number : ' webAnswer
                        
                        if [ "$webAnswer" -eq "1" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( Sub-Domain - Basic )${clear}"
                                read -p 'Enter Link ex --> ( example.com ) : ' subDomainBasic
                                assetfinder --subs-only "${subDomainBasic}"
                                echo -e "${bg_green}Complete${clear}"

                        elif [ "$webAnswer" -eq "2" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( Directory )${clear}"
                                read -p 'Enter Link  ex --> ( http://example.com or https://example.com ) : ' Directorys
                                gobuster dir -u ${Directorys} -w directory-list-2.3-medium.txt
                                echo -e "${bg_green}Complete${clear}"

                        elif [ "$webAnswer" -eq "3" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( Parameter Fuzzing - GET )${clear}"
                            	read -p 'enter site http or https (http://example.com/example.php) : ' sites
                                ffuf -w burp-parameter-names.txt:FUZZ -u ${sites}?FUZZ=1
                        	    echo -e "${bg_green}Complete${clear}"

                        elif [ "$webAnswer" -eq "4" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( Parameter Fuzzing - GET Filter )${clear}"
                                read -p 'enter site http or https (http://example.com/example.php) : ' sites
                                read -p 'Enter Size Filter : ' filters
                                ffuf -w burp-parameter-names.txt:FUZZ -u ${sites}?FUZZ=1 -fs ${filters},0
                        	    echo -e "${bg_green}Complete${clear}"

                        elif [ "$webAnswer" -eq "5" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( Parameter Fuzzing - POST )${clear}" 
                                read -p 'enter site http or https (http://example.com/example.php) : ' sites
                                read -p 'Enter Size Filter : ' filters
                                ffuf -w burp-parameter-names.txt:FUZZ -u ${sites} -d "FUZZ=1"
                        	    echo -e "${bg_green}Complete${clear}"

                        elif [ "$webAnswer" -eq "6" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( Parameter Fuzzing - POST Filter )${clear}"
                                read -p 'enter site http or https (http://example.com/example.php) : ' sites
                                read -p 'Enter Size Filter : ' filters
                                ffuf -w burp-parameter-names.txt:FUZZ -u ${sites} -d "FUZZ=1" -fs ${filters},0
                        	    echo -e "${bg_green}Complete${clear}"
                        	
                        elif [ "$webAnswer" -eq "7" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( Value Fuzzing )${clear}"
                                read -p 'enter site http or https (http://example.com/example.php?parameter=) : ' sites                               
                                ffuf -w id.txt:FUZZ -u ${sites}FUZZ
                        	    echo -e "${bg_green}Complete${clear}"
                        	
                       	elif [ "$webAnswer" -eq "8" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( Value Fuzzing - Filter )${clear}"
                                read -p 'enter site http or https (http://example.com/example.php?parameter=) : ' sites
                                read -p 'Enter Size Filter : ' filters
                                ffuf -w id.txt:FUZZ -u ${sites}FUZZ -fs ${filters},0
                        	    echo -e "${bg_green}Complete${clear}"  
                        else 
                            echo -e "${red} Not Found ${clear}"
                        fi

                    done

        elif [ "$chose" -eq "2" ]
            then
                while true
                    do
                        echo -e "${red}\t\t\t\t( Port Scanner )${clear}"
                        echo -e "${magenta}
                        1)Port Scanner Basic
                        2)Port Scanner UDP - Basic
                        3)Port Scanner - Advance
                        4)Port Scanner - Locate Firewall
                        5)Port Scanner - All Port
                        6)Port Scanner - Firewall Top 20 Port Scan
                        ${clear}"
                        read -p 'Enter Number : ' portChose

                        if [ "$portChose" -eq "1" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( PORT Scanner  Basic )${clear}"
                                read -p 'Enter IP/Domain : ' portScannerIpOrDomain
                                sudo nmap -A -vv ${portScannerIpOrDomain}
                                echo -e "${bg_green} complete ${clear}"

                        elif [ "$portChose" -eq "2" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( PORT Scanner UDP - Basic )${clear}"
                                read -p 'Enter IP/Domain : ' portScannerIpOrDomain
                                sudo nmap -sU -A -vv ${portScannerIpOrDomain}
                                echo -e "${bg_green} complete ${clear}"

                        elif [ "$portChose" -eq "3" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( PORT Scanner - Advance )${clear}"
                                read -p 'Enter IP : ' ipAddress
                                sudo nmap -sC -sV -A -p- -vv ${ipAddress}
                                echo -e "${bg_green} complete ${clear}"
                
                        elif [ "$portChose" -eq "4" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( PORT Scanner - Locate Firewall )${clear}"
                                read -p 'Enter IP : ' ipAddress
                                sudo nmap -sU -sN -p- -vv ${ipAddress}
                                echo -e "${bg_green} complete ${clear}"

                        elif [ "$portChose" -eq "5" ]
                            then 
                                echo -e "${cyan}\t\t\t\t ( PORT Scanner -  All Port )${clear}"
                                read -p 'Enter IP : ' ipAddress
                                sudo nmap -p- -vv ${ipAddress}
                                echo -e "${bg_green} complete ${clear}"

                        elif [ "$portChose" -eq "6" ]
                            then
                                echo -e "${cyan}\t\t\t\t ( Port Scanner - Firewall Top 20 Port Scan )${clear}"
                                read -p 'Enter IP : ' ipAddress
                                sudo nmap -sU -sN --top-ports 20 -vv ${ipAddress}
                                echo -e "${bg_green} complete ${clear}"

                        else 
                                echo -e "${red} Not found ${clear}"

                        fi

                    done

        elif [ "$chose" -eq "3" ]
            then
                echo -e "${red}\t\t\t\t( BruteForce )${clear}"
                echo -e "${magenta}
                    
                    1)BruteForce FTP
                    2)BruteForce SSH
                    3)BruteForce Auth-Basic
                    4)BruteForce HTTP-POST
                ${clear}"

                read -p 'Enter Number : ' cBruteForce

                if [ $cBruteForce -eq "1" ]
                    then
                    echo -e "${cyan}\t\t\t\t ( FTP )${clear}"
                    read -p 'Enter username : ' userNameFTP
                    read -p 'Enter IP : ' IPFTP
                    read -p 'wordlist location : ' wd
                    hydra -l ${userNameFTP} -P ${wd} ftp://${IPFTP}
                        
                elif [ $cBruteForce -eq "2" ]
                    then
                        echo -e "${cyan}\t\t\t\t ( SSH )${clear}"
                        read -p 'Enter username : ' userNameSSH
                        read -p 'Enter IP : ' IPSSH
                        read -p 'wordlist location : ' wd
                        hydra -l ${userNameSSH} -P ${wd} ssh://${IPSSH}

                elif [ $cBruteForce -eq "3" ]
                    then
                        echo -e "${cyan}\t\t\t\t ( HTTP-Auth )${clear}"
                        read -p 'Enter UserName or Email : ' usersAuth
                        read -p 'Enter IP/Domain : ' ipOrDomainAuth
                        read -p 'wordlist location : ' wd
                        read -p 'Enter Path ex --> ( login.php ) dont add this(/) : ' pathsAuth
                        hydra -l ${usersAuth} -P ${wd} -f ${ipOrDomainAuth} http-get /${pathsAuth}

                elif [ $cBruteForce -eq "4" ]
                    then
                        echo -e "${cyan}\t\t\t\t ( HTTP-POST )${clear}"
                        read -p 'Do you know userName (Y | N) : ' yn
                        case $yn in
                        y|Y)
                            read -p 'Enter UserName or Email : ' usersPOST
                            read -p 'Enter IP/Domain : ' ipOrDomainPOST
                            read -p 'wordlist location : ' wd
                            read -p 'Enter Path ex --> ( login.php ) dont add this(/) : ' pathPOST
                            read -p 'Enter login Request ex -> (log=^USER^&pwd=^PASS^) dont forget this (^USER^ & ^PASS^) : ' requestPOST
                            read -p 'Enter Error Message : ' errorMessagePOST
                            hydra -l ${usersPOST} -P ${wd} ${ipOrDomainPOST} http-post-form "/${pathPOST}:${requestPOST}:${errorMessagePOST}"
                            
                        ;;
                        n|N)
                            read -p 'Enter IP/Domain : ' ipOrDomainPOSTn
                            read -p 'wordlist location : ' wd
                            read -p 'Enter Path ex --> ( login.php ) dont add this(/) : ' pathPOSTn
                            read -p 'Enter login Request ex -> (log=^USER^&pwd=^PASS^) dont forget this (^USER^ & ^PASS^) : ' requestPOSTn
                            read -p 'Enter Error Message : ' errorMessagePOSTn
                             hydra -L ${wd} -p passwordTestToFindUser ${ipOrDomainPOSTn} http-post-form "/${pathPOSTn}:${requestPOSTn}:${errorMessagePOSTn}"

                        ;;
                        esac

                else 
                    echo -e "${red} Not Found ${clear}"
                fi

        elif [ "$chose" -eq "4" ]
            then
                echo -e "${magenta}\t\t\t\t( Web Injection )${clear}"
                echo -e "${cyan}
                    
                    1)SQL Database Injection
                    2)SQL Table Injection
                    3)SQL Column Injection
                    4)SQL Dumper

                ${clear}"

                read -p 'Enter Number : ' webInjection

                if [ $webInjection -eq "1" ]
                    then 
                        echo -e "${magenta}\t\t\t\t ( SQL Database Injection )${clear}"
                        read -p 'Enter Address : ' address
                        #echo -e "$[green}Pleas Wait, It's takes some time${clear}"
                        sqlmap -u "${address}" --dbs --random-agent --tamper=between --risk=2 --level=2 

                elif [ $webInjection -eq "2" ]
                    then
                        echo -e "${cyan}\t\t\t\t ( SQL Table Injection )${clear}"
                        read -p 'Enter Address : ' addressT
                        read -p 'Enter Database Name : ' DBNameT
                        #echo -e "$[green}Pleas Wait, It's takes some time${clear}"
                        sqlmap -u "${addressT}" -D ${DBNameT}  --tables --tamper=between --random-agent --level=2 --risk=2 

                elif [ $webInjection -eq "3" ]
                    then
                        echo -e "${cyan}\t\t\t\t ( SQL Column Injection )${clear}"
                        read -p 'Enter Address : ' addressC
                        read -p 'Enter Database Name : ' DBNameC
                        read -p 'Enter Table Name : ' tableC
                        #echo -e "$[green}Pleas Wait, It's takes some time${clear}"
                        sqlmap -u "${addressC}" -D ${DBNameC} -T ${tablec}

                elif [ $webInjection -eq "4" ]
                    then
                        echo -e "${cyan}\t\t\t\t ( SQL Dumper  )${clear}"
                        read -p 'Enter Address : ' addressD
                        read -p 'Enter Database Name : ' DBNameD
                        read -p 'Enter Table Name : ' tableD
                        #echo -e "$[green}Pleas Wait, It's takes some time${clear}"
                        sqlmap -u "${addressD}" -D ${DBNameD} -T ${tableD} --dump

                else 
                    echo -e "${red} Not Found ${clear}"
                fi
                        
                elif [ "$chose" -eq "5" ]
                    then
                        echo -e "${cyan}\t\t\t ( WebSite Scanner )${clear}"
                        echo -e "${magenta}       
                    1)Templete Scanner
                    2)WordPress Scanner
                    3)WordPress User Enumeration
                    4)SQL Scanner
                    5)Account Take Over
                    ${clear}"

                    read -p 'Enter : ' webScan

                    if [ "$webScan" -eq "1" ]
                            then 
                                echo -e "${cyan}\t\t\t\t ( Search For Vulnerabilites )${clear}"
                                echo -e "${magenta}\t\t1)List\n\t\t2)Domain${clear}"
                                read -p 'Enter : ' ld

                                if [ "$ld" -eq "1" ]
                                    then 
                                        read -p 'Enter List location : ' listLocation
                                        nuclei -l ${listLocation}
                        
                                elif [ "$ld" -eq "2" ]
                                    then
                                        read -p "Enter Address : " naddress
                                        nuclei -u ${naddress}

                                else 
                                    echo -e "${red}Not Found only 1 or 2${clear}"
                                fi

                    elif [ "$webScan" -eq "2" ]
                        then
                            read -p 'Enter domain (Https://ex.com | http://ex.com) : ' sites
                            sudo wpscan --url ${sites} -e
                            echo -e "${green}Done${clear}"

                    elif [ "$webScan" -eq "3" ]
                        then
                            read -p 'Enter domain (Https://ex.com | http://ex.com) : ' sites
                            sudo wpscan --url ${sites} -e u 
                            echo -e "${green}Done${clear}"

                    elif [ "$webScan" -eq "4" ]
                        then
                            read -p 'Enter Address (http://ex.org/page.php?id=1) : ' sqls
                            sqlmap -u "${sqls}" --batch --level=3 --risk=3 --tamper=between,space2comment --answers="Y"
                    
                    elif [ "$webScan" -eq "5" ]
                        then
                            read -p 'Enter Domain (ex.com) : ' domains
                            python3 /home/kwolf/Hacking/code/BashScripting/smuggler/smuggler.py -u ${domains}
                            echo -e "${bg_green} Done ${clear}" 
                else 
                    echo -e "${red} Not Found only 1  2  3  4 or 5${clear}"
                fi

        elif [ "$chose" -eq "6" ]
            then
                echo -e "${red}Exiting...${clear}"
                echo -ne '#                         (00%)\r'
                sleep 1
                echo -ne '#####                     (33%)\r'
                sleep 1
                echo -ne '########                  (40%)\r'
                sleep 2
                echo -ne '###########               (66%)\r'
                sleep 2
                echo -ne '###############           (75%)\r'
                sleep 2
                echo -ne '###################       (86%)\r'
                sleep 2
                echo -ne '######################    (97%)\r'
                sleep 2
                echo -ne '#########################(100%)\r'
                echo -ne '\n'
                exit
                clear
        else
           echo -e "${red}Not Found Pleas only enter 1  2  3  4  or  5 ${clear}"
        fi
done
