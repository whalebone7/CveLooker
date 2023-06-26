# CveLooker
This light weight tool allows you to search for Common Vulnerabilities and Exposures (CVEs) based on a vulnerability keyword and an optional year filter.


# Installation 
git clone this rep && cd CveLooker

`Chmod +x cvelooker.sh`

Create an alias for cvelooker.sh `echo "alias cvelooker='bash /path/to/cvelooker.sh'" >> ~/.bashrc`

Reload the bashrc file `source ~/.bashrc`

# Usage
`./cvelooker.sh "vulnerability keyword" "year"`
Replace "vulnerability keyword" with the specific vulnerability you want to search for, such as "rce," "sqli," or "ssrf." Optionally, specify the "year" parameter to filter the results based on a particular year. 

#  Example:

`./cvelooker.sh "ssrf" "2023"`

This command will search for CVEs related to remote code execution (SSRF) vulnerabilities that were reported in the year 2023.


https://github.com/whalebone7/CveLooker/assets/125891350/9e469051-b6ef-4055-976a-997724bc79f4


