# export common ENV variables from comm_env.sh
source comm_env.sh

# server role for graph server
export DGL_ROLE=server

# each machine has a unique id
# which indicates which part of graph should 
export DGL_SERVER_ID=$ARNOLD_ID


python3.8 train_dist_server.py  --ip_config $DGL_IP_CONFIG

