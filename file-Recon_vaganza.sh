#!/bin/bash

echo "----------------------------"
echo "----------------------------"
echo "***  File.Recon_Vaganza  ***"
echo "----------------------------"
echo "----------------------------"

echo ""
echo "Informe o site:"
read site

echo ""
echo ".... ---> Scanninnnng   :)"
echo ""

echo "----------------------------"
echo "    ARQUIVOS ENCONTRADOS    "
echo "----------------------------"

for palavra in $(cat php_list.txt);do
resp=$(curl -s -H "user-agent: Obaoba" -o /dev/null -w "%{http_code}" $site/$palavra)

if [ $resp == "200" ];then
        echo "--> $site/$palavra"
fi
done

echo ""
echo "                                     !!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "                                    Au revoir -----------------"
echo "                                 ----------------------------"
echo "                               ***  File.Recon_Vaganza  ***   "
