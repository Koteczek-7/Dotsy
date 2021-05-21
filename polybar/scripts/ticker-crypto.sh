#!/bin/sh

API="https://api.kraken.com/0/public/Ticker"

quote=$(curl -sf $API?pair=ADAUSDT | jq -r ".result.ADAUSDT.c[0]")
quote=$(LANG=C printf "%.4f" "$quote")

echo "[ADA/USDT $quote $]"
