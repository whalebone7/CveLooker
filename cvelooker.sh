
keyword=$1
year_limit=$2

echo -e "\033[1;36m    ___         _             _  __        \n  / __|_ _____| |   ___  ___| |/ /___ _ _ \n | (__\ V / -_) |__/ _ \/ _ \ ' </ -_) '_|\n  \___|\_/\___|____\___/\___/_|\_\___|_|  \n                                       \033[0m"
echo "@whalebone7"
echo ""
curl -s "https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=$keyword" | awk -F'</a></td>' -v limit=$year_limit '/<td valign="top" nowrap="nowrap"><a href="\/cgi-bin\/cvename\.cgi\?name=CVE/ && $0 ~ "CVE-" limit {gsub(/.*>/,"",$1); getline desc; gsub(/^[ \t]+|<td valign="top">/,"",desc); print $1 ": " desc "\n"}'
