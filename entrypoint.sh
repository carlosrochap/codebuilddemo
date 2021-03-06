#!/bin/sh

aws ssm get-parameters --names test_param test_param2 ${ENV}_param --no-with-decryption --region $DEFAULT_REGION >> /usr/local/apache2/htdocs/secrets.txt

aws ssm get-parameters-by-path --path /$ENV --recursive --with-decryption --region $DEFAULT_REGION >> /usr/local/apache2/htdocs/secrets_bypath.txt

echo $ENV >> /usr/local/apache2/htdocs/env.txt


#Hand off the to the CMD
exec "$@"
