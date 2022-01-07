
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int temp ;
struct TYPE_9__ {int self_secret_key; int self_public_key; } ;
struct TYPE_8__ {scalar_t__ num_friends; TYPE_2__* friends_list; TYPE_5__* dht; TYPE_1__* c; } ;
struct TYPE_7__ {int dht_public_key; int real_public_key; int know_dht_public_key; } ;
struct TYPE_6__ {int self_secret_key; int * self_public_key; } ;
typedef TYPE_3__ Onion_Client ;


 int CRYPTO_PACKET_DHTPK ;
 int DATA_IN_RESPONSE_MIN_SIZE ;
 int MAX_CRYPTO_REQUEST_SIZE ;
 int create_request (int ,int ,int *,int ,int *,int,int ) ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int encrypt_data (int ,int ,int *,int const*,int,int *) ;
 int memcpy (int *,int *,int) ;
 int new_nonce (int *) ;
 int route_tofriend (TYPE_5__*,int ,int *,int) ;

__attribute__((used)) static int send_dht_dhtpk(const Onion_Client *onion_c, int friend_num, const uint8_t *data, uint16_t length)
{
    if ((uint32_t)friend_num >= onion_c->num_friends)
        return -1;

    if (!onion_c->friends_list[friend_num].know_dht_public_key)
        return -1;

    uint8_t nonce[crypto_box_NONCEBYTES];
    new_nonce(nonce);

    uint8_t temp[DATA_IN_RESPONSE_MIN_SIZE + crypto_box_NONCEBYTES + length];
    memcpy(temp, onion_c->c->self_public_key, crypto_box_PUBLICKEYBYTES);
    memcpy(temp + crypto_box_PUBLICKEYBYTES, nonce, crypto_box_NONCEBYTES);
    int len = encrypt_data(onion_c->friends_list[friend_num].real_public_key, onion_c->c->self_secret_key, nonce, data,
                           length, temp + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES);

    if ((uint32_t)len + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES != sizeof(temp))
        return -1;

    uint8_t packet[MAX_CRYPTO_REQUEST_SIZE];
    len = create_request(onion_c->dht->self_public_key, onion_c->dht->self_secret_key, packet,
                         onion_c->friends_list[friend_num].dht_public_key, temp, sizeof(temp), CRYPTO_PACKET_DHTPK);

    if (len == -1)
        return -1;

    return route_tofriend(onion_c->dht, onion_c->friends_list[friend_num].dht_public_key, packet, len);
}
