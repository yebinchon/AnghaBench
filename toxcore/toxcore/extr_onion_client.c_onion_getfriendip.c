
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int dht; } ;
typedef TYPE_1__ Onion_Client ;
typedef int IP_Port ;


 int DHT_getfriendip (int ,int *,int *) ;
 int crypto_box_PUBLICKEYBYTES ;
 scalar_t__ onion_getfriend_DHT_pubkey (TYPE_1__ const*,int,int *) ;

int onion_getfriendip(const Onion_Client *onion_c, int friend_num, IP_Port *ip_port)
{
    uint8_t dht_public_key[crypto_box_PUBLICKEYBYTES];

    if (onion_getfriend_DHT_pubkey(onion_c, friend_num, dht_public_key) == 0)
        return -1;

    return DHT_getfriendip(onion_c->dht, dht_public_key, ip_port);
}
