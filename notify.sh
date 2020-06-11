url="https://clientarea.gigsgigscloud.com/index.php?/cart/cloudlet-v-lax/&step=0"
keywords="LAX-V2"
notifymessage="LAX-V1 is in stock"
slackwebhook="https://hooks.slack.com/services/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"
if wget -qO- --no-check-certificate $url | grep $keywords; then
 echo "Notifying"
 curl -X POST -H 'Content-type: application/json' --data '{"text":"$notifymessage"}' $slackwebhook
fi
