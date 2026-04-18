#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Verify python3 is available for the dev server
if ! command -v python3 &>/dev/null; then
  echo "python3 not found — installing..."
  apt-get install -y python3 2>/dev/null || true
fi

echo "Environment ready. Run: python3 -m http.server 8080"
