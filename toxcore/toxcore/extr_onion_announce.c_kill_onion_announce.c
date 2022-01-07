
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int net; } ;
typedef TYPE_1__ Onion_Announce ;


 int NET_PACKET_ANNOUNCE_REQUEST ;
 int NET_PACKET_ONION_DATA_REQUEST ;
 int free (TYPE_1__*) ;
 int networking_registerhandler (int ,int ,int *,int *) ;

void kill_onion_announce(Onion_Announce *onion_a)
{
    if (onion_a == ((void*)0))
        return;

    networking_registerhandler(onion_a->net, NET_PACKET_ANNOUNCE_REQUEST, ((void*)0), ((void*)0));
    networking_registerhandler(onion_a->net, NET_PACKET_ONION_DATA_REQUEST, ((void*)0), ((void*)0));
    free(onion_a);
}
