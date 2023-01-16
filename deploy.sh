fission spec init
fission env create --spec --name wtc-list-fix-remove-env --image nexus.sigame.com.br/fission-wacth-list-fixed-income-remove:0.1.0-0 --poolsize 0 --version 3 --imagepullsecret "nexus-v3" --spec
fission fn create --spec --name wtc-list-fix-remove-fn --env wtc-list-fix-remove-env --code fission.py --targetcpu 80 --executortype newdeploy --maxscale 3 --requestsperpod 10000 --spec
fission route create --spec --name wtc-list-fix-remove-rt --method DELETE --url /watch_list/fixed_income/remove --function wtc-list-fix-remove-fn
