
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int net; } ;
typedef TYPE_1__ Onion ;


 int NET_PACKET_ONION_RECV_1 ;
 int NET_PACKET_ONION_RECV_2 ;
 int NET_PACKET_ONION_RECV_3 ;
 int NET_PACKET_ONION_SEND_1 ;
 int NET_PACKET_ONION_SEND_2 ;
 int NET_PACKET_ONION_SEND_INITIAL ;
 int free (TYPE_1__*) ;
 int networking_registerhandler (int ,int ,int *,int *) ;

void kill_onion(Onion *onion)
{
    if (onion == ((void*)0))
        return;

    networking_registerhandler(onion->net, NET_PACKET_ONION_SEND_INITIAL, ((void*)0), ((void*)0));
    networking_registerhandler(onion->net, NET_PACKET_ONION_SEND_1, ((void*)0), ((void*)0));
    networking_registerhandler(onion->net, NET_PACKET_ONION_SEND_2, ((void*)0), ((void*)0));

    networking_registerhandler(onion->net, NET_PACKET_ONION_RECV_3, ((void*)0), ((void*)0));
    networking_registerhandler(onion->net, NET_PACKET_ONION_RECV_2, ((void*)0), ((void*)0));
    networking_registerhandler(onion->net, NET_PACKET_ONION_RECV_1, ((void*)0), ((void*)0));

    free(onion);
}
