# Example env vars for bot
# Copy this to `env.sh` and edit with your real vars -- it is ignored by git

export TELEGRAM_BOT_POSTGRES_URL="postgresql://localhost/postgres"

read -r -d '' MESSAGE_BAN_PATTERNS << 'EOF'
# ETH
# e.g. F8C8405e85Cfe42551DEfeB2a4548A33bb3DF840
[0-9a-fA-F]{40,40}
# BTC
# e.g. 13qt9rCA2CQLZedmUuDiPkwdcAJLsuTvLm
|[0-9a-zA-Z]{34,34}
EOF

read -r -d '' MESSAGE_HIDE_PATTERNS << 'EOF'
# ETH
# e.g. F8C8405e85Cfe42551DEfeB2a4548A33bb3DF840
|[0-9a-fA-F]{40,40}
# BTC
# e.g. 13qt9rCA2CQLZedmUuDiPkwdcAJLsuTvLm
|[0-9a-zA-Z]{34,34}
EOF

export TELEGRAM_BOT_TOKEN="724379213:AAGJTg9X-foiz-nKeh1MuPG0c9uh-Xlw4r4"

export NAME_BAN_PATTERNS="admin$"

export CHAT_IDS="-1001155381095"

# Needed to make these env vars visible to python
export MESSAGE_BAN_PATTERNS=$MESSAGE_BAN_PATTERNS
export MESSAGE_HIDE_PATTERNS=$MESSAGE_HIDE_PATTERNS
