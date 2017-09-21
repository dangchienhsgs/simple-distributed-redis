PATTERN_PORT=638

kill $(ps aux | grep redis  | grep ${PATTERN_PORT} | awk '{print $2}')

