if [ $# -eq 0 ]; then
        echo "usages: $0 <file>"
        exit 1
fi
while IFS= read -r line; do
        trimed_name=$(echo "$line" | xargs)

        if [ -n $trimed_name ]; then
                mkdir -p "/tmp/$trimed_name"
                echo "Created Directory: $trimed_name"
        fi
done < "$1"