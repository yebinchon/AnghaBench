
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ num_friends; TYPE_1__* friends_list; } ;
struct TYPE_4__ {scalar_t__ status; int dht_public_key; int know_dht_public_key; } ;
typedef TYPE_2__ Onion_Client ;


 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int *,int ,int ) ;

unsigned int onion_getfriend_DHT_pubkey(const Onion_Client *onion_c, int friend_num, uint8_t *dht_key)
{
    if ((uint32_t)friend_num >= onion_c->num_friends)
        return 0;

    if (onion_c->friends_list[friend_num].status == 0)
        return 0;

    if (!onion_c->friends_list[friend_num].know_dht_public_key)
        return 0;

    memcpy(dht_key, onion_c->friends_list[friend_num].dht_public_key, crypto_box_PUBLICKEYBYTES);
    return 1;
}
