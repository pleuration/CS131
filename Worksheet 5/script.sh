csvFile="Global YouTube Statistics.csv"
dir="United States"
OLDIFS=$IFS
IFS=$'\n'
categories=$(grep "United States" "$csvFile" | cut -d',' -f5 | sort -u)
for category in $categories
do
  path="$dir/$category.txt"
  
  grep "United States" "$csvFile" | grep -F "$category" > "$path"
done
IFS=$OLDIFS
