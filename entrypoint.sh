#!/bin/sh

env >> /etc/environment

# execute CMD
echo "$@"
exec "$@"

# supervisorctl reread
# supervisorctl update
# supervisorctl start "laravel-worker:*"

service beanstalkd start