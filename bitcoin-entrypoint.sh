#!/opt/homebrew/bin/bash bash

CORE_PORT=9333
CORE_RPCPORT=9332

arguments=""
for env in "${!CORE_@}"
do
  value=${!env}
  uppercase_flag=${env#CORE_}
  lowercase_flag=${uppercase_flag,,}
  arguments="${arguments} -${lowercase_flag,,}=${!env}"
done
echo $arguments
# -port=9333 -rpcport=9332