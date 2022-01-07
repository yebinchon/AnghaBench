
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ num_friends; TYPE_1__* friends_list; } ;
struct TYPE_4__ {scalar_t__ status; int know_dht_public_key; int dht_public_key; int last_seen; } ;
typedef TYPE_2__ Onion_Client ;


 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int ,int const*,int ) ;
 scalar_t__ public_key_cmp (int const*,int ) ;
 int unix_time () ;

int onion_set_friend_DHT_pubkey(Onion_Client *onion_c, int friend_num, const uint8_t *dht_key)
{
    if ((uint32_t)friend_num >= onion_c->num_friends)
        return -1;

    if (onion_c->friends_list[friend_num].status == 0)
        return -1;

    if (onion_c->friends_list[friend_num].know_dht_public_key) {
        if (public_key_cmp(dht_key, onion_c->friends_list[friend_num].dht_public_key) == 0) {
            return -1;
        }

        onion_c->friends_list[friend_num].know_dht_public_key = 0;
    }

    onion_c->friends_list[friend_num].last_seen = unix_time();
    onion_c->friends_list[friend_num].know_dht_public_key = 1;
    memcpy(onion_c->friends_list[friend_num].dht_public_key, dht_key, crypto_box_PUBLICKEYBYTES);

    return 0;
}
