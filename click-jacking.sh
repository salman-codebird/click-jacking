#! /bin/bash
red=$(tput setaf 1;)
blue=$(tput setaf 4;)
reset=$(tput sgr 0;)
echo -e "Welcome ${blue}$USER${reset}\n"
read -p "Please enter url to check click jacking: " url
rm temp.html
touch temp.html
echo "<!DOCTYPE html>
<head>
	<title>
		Test click jacking!
	</title>
</head>
<body>
	<iframe src="$url" width="1900" height="700"></iframe>
	<h2>If you see web page, It is vulnerable to click jacking!!!</h2>
</body>
</html>" >temp.html
firefox temp.html
