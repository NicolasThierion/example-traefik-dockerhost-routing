#! /bin/sh

mkdir config > /dev/null 2>&1
export DOCKER_GATEWAY_ADDRESS=$(ip route show default | awk '/default/ {print $3}')

( echo "cat <<EOF" ; cat local-routing.toml.template ; echo; echo EOF ) | sh > config/${LOCAL_SERVICE_NAME}.toml
