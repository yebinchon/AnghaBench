
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int name_length; int statusmessage_length; int dht; } ;
typedef TYPE_1__ Messenger ;


 int DHT_size (int ) ;
 int NUM_SAVED_PATH_NODES ;
 int NUM_SAVED_TCP_RELAYS ;
 int TCP_INET6 ;
 int crypto_box_PUBLICKEYBYTES ;
 int crypto_box_SECRETKEYBYTES ;
 int packed_node_size (int ) ;
 int saved_friendslist_size (TYPE_1__ const*) ;

uint32_t messenger_size(const Messenger *m)
{
    uint32_t size32 = sizeof(uint32_t), sizesubhead = size32 * 2;
    return size32 * 2
             + sizesubhead + sizeof(uint32_t) + crypto_box_PUBLICKEYBYTES + crypto_box_SECRETKEYBYTES
             + sizesubhead + DHT_size(m->dht)
             + sizesubhead + saved_friendslist_size(m)
             + sizesubhead + m->name_length
             + sizesubhead + m->statusmessage_length
             + sizesubhead + 1
             + sizesubhead + NUM_SAVED_TCP_RELAYS * packed_node_size(TCP_INET6)
             + sizesubhead + NUM_SAVED_PATH_NODES * packed_node_size(TCP_INET6)
             + sizesubhead;
}
