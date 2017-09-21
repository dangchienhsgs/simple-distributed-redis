NUM_INSTANCES=5
REDIS_HOME="/data/chiennd/redis-3.2.8/src"

for i in `seq 0 ${NUM_INSTANCES}`;
do
    echo "Start redis server part ${i}"
    mkdir -p p${i}
    nohup ${REDIS_HOME}/redis-server p${i}/redis.conf &> log/redis_server_part_${i}.log &
done

