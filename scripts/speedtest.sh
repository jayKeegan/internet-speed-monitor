#!/bin/bash

speedtest_output=$(speedtest-cli --json)

upload=$(echo $speedtest_output | jq '.upload / 1000000')
download=$(echo $speedtest_output | jq '.download / 1000000')
ping=$(echo $speedtest_output | jq '.ping')

echo "Ping: $ping"
echo "Download: $download"
echo "Upload: $upload"

# # Send the data to the API route on your NextJS app using curl
# curl -X POST https://your-nextjs-app.com/api/speedtest \
# -H "Content-Type: application/json" \
# -d "{\"upload\": $upload, \"download\": $download, \"ping\": $ping}"
