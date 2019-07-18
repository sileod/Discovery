#wget https://alex.irit.fr/depots/Discovery/DiscoveryBase.zip
#wget https://alex.irit.fr/depots/Discovery/DiscoveryHard.zip
#wget https://alex.irit.fr/depots/Discovery/DiscoveryBig.zip



export fileid=1yOJvkrYbGED9yFrSgo7297jW_47e55g6
export filename=DiscoveryBase.zip

## WGET ##
wget --save-cookies cookies.txt 'https://docs.google.com/uc?export=download&id='$fileid -O- \
     | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p' > confirm.txt

wget --load-cookies cookies.txt -O $filename \
     'https://docs.google.com/uc?export=download&id='$fileid'&confirm='$(<confirm.txt)
     

unzip \*.zip
