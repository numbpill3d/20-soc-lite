#!/usr/bin/env bash
# triage.sh
F="${1:-/var/log/suricata/eve.json}"
grep -h alert "$F" 2>/dev/null | grep -o '"signature":"[^"]*"' | sort | uniq -c | sort -nr | head -n 20
