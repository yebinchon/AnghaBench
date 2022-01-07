
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int net; } ;
struct TYPE_7__ {int net; int secret_bytes; TYPE_2__* dht; } ;
typedef TYPE_1__ Onion_Announce ;
typedef TYPE_2__ DHT ;


 int NET_PACKET_ANNOUNCE_REQUEST ;
 int NET_PACKET_ONION_DATA_REQUEST ;
 TYPE_1__* calloc (int,int) ;
 int handle_announce_request ;
 int handle_data_request ;
 int networking_registerhandler (int ,int ,int *,TYPE_1__*) ;
 int new_symmetric_key (int ) ;

Onion_Announce *new_onion_announce(DHT *dht)
{
    if (dht == ((void*)0))
        return ((void*)0);

    Onion_Announce *onion_a = calloc(1, sizeof(Onion_Announce));

    if (onion_a == ((void*)0))
        return ((void*)0);

    onion_a->dht = dht;
    onion_a->net = dht->net;
    new_symmetric_key(onion_a->secret_bytes);

    networking_registerhandler(onion_a->net, NET_PACKET_ANNOUNCE_REQUEST, &handle_announce_request, onion_a);
    networking_registerhandler(onion_a->net, NET_PACKET_ONION_DATA_REQUEST, &handle_data_request, onion_a);

    return onion_a;
}
