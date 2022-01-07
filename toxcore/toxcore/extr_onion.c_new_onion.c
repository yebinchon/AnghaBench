
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int net; } ;
struct TYPE_7__ {int net; int timestamp; int secret_symmetric_key; TYPE_2__* dht; } ;
typedef TYPE_1__ Onion ;
typedef TYPE_2__ DHT ;


 int NET_PACKET_ONION_RECV_1 ;
 int NET_PACKET_ONION_RECV_2 ;
 int NET_PACKET_ONION_RECV_3 ;
 int NET_PACKET_ONION_SEND_1 ;
 int NET_PACKET_ONION_SEND_2 ;
 int NET_PACKET_ONION_SEND_INITIAL ;
 TYPE_1__* calloc (int,int) ;
 int handle_recv_1 ;
 int handle_recv_2 ;
 int handle_recv_3 ;
 int handle_send_1 ;
 int handle_send_2 ;
 int handle_send_initial ;
 int networking_registerhandler (int ,int ,int *,TYPE_1__*) ;
 int new_symmetric_key (int ) ;
 int unix_time () ;

Onion *new_onion(DHT *dht)
{
    if (dht == ((void*)0))
        return ((void*)0);

    Onion *onion = calloc(1, sizeof(Onion));

    if (onion == ((void*)0))
        return ((void*)0);

    onion->dht = dht;
    onion->net = dht->net;
    new_symmetric_key(onion->secret_symmetric_key);
    onion->timestamp = unix_time();

    networking_registerhandler(onion->net, NET_PACKET_ONION_SEND_INITIAL, &handle_send_initial, onion);
    networking_registerhandler(onion->net, NET_PACKET_ONION_SEND_1, &handle_send_1, onion);
    networking_registerhandler(onion->net, NET_PACKET_ONION_SEND_2, &handle_send_2, onion);

    networking_registerhandler(onion->net, NET_PACKET_ONION_RECV_3, &handle_recv_3, onion);
    networking_registerhandler(onion->net, NET_PACKET_ONION_RECV_2, &handle_recv_2, onion);
    networking_registerhandler(onion->net, NET_PACKET_ONION_RECV_1, &handle_recv_1, onion);

    return onion;
}
