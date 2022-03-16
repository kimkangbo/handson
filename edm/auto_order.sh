while :
do
curl -v -XPOST http://localhost:8080/v1/order -H'Content-Type: application/json' --data-binary @- << EOF
{
    "order": {
        "user_id": "user",
        "name": "Hong Gil Dong",
        "addr": "29, Hansil-ro, Dalseo-gu, Daegu, Republic of Korea",
        "tel": "01012341234",
        "email": "hong@gil.com"
    },
    "inventory": {
        "id": 1,
        "quantity": 1
    }
}
EOF
sleep 1
curl -v -XPOST http://localhost:8080/v1/order -H'Content-Type: application/json' --data-binary @- << EOF
{
    "order": {
        "user_id": "user",
        "name": "Kim Kang Bo",
        "addr": "30, Hansil-ro, Dalseo-gu, Daegu, Republic of Korea",
        "tel": "01012341235",
        "email": "kim@gil.com"
    },
    "inventory": {
        "id": 2,
        "quantity": 2
    }
}
EOF
sleep 1
curl -v -XPOST http://localhost:8080/v1/order -H'Content-Type: application/json' --data-binary @- << EOF
{
    "order": {
        "user_id": "user",
        "name": "Mr. Kim",
        "addr": "31, Hansil-ro, Dalseo-gu, Daegu, Republic of Korea",
        "tel": "01012341236",
        "email": "kim@gil.com"
    },
    "inventory": {
        "id": 3,
        "quantity": 3
    }
}
EOF
sleep 1
curl -v -XPOST http://localhost:8080/v1/order -H'Content-Type: application/json' --data-binary @- << EOF
{
    "order": {
        "user_id": "user",
        "name": "Mr. Lee",
        "addr": "31, Hansil-ro, Dalseo-gu, Daegu, UAS",
        "tel": "01012341237",
        "email": "lee@gil.com"
    },
    "inventory": {
        "id": 4,
        "quantity": 4
    }
}
EOF
sleep 1
curl -v -XPOST http://localhost:8080/v1/order -H'Content-Type: application/json' --data-binary @- << EOF
{
    "order": {
        "user_id": "user",
        "name": "Mr. Park",
        "addr": "31, Hansil-ro, Dalseo-gu, Daegu, Japan",
        "tel": "01012341238",
        "email": "park@gil.com"
    },
    "inventory": {
        "id": 5,
        "quantity": 5
    }
}
EOF
done
