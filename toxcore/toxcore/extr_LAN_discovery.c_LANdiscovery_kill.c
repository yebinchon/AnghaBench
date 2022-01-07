
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int net; } ;
typedef TYPE_1__ DHT ;


 int NET_PACKET_LAN_DISCOVERY ;
 int networking_registerhandler (int ,int ,int *,int *) ;

void LANdiscovery_kill(DHT *dht)
{
    networking_registerhandler(dht->net, NET_PACKET_LAN_DISCOVERY, ((void*)0), ((void*)0));
}
