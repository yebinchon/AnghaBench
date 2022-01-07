
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int net; } ;
typedef TYPE_1__ DHT ;


 int NET_PACKET_LAN_DISCOVERY ;
 int handle_LANdiscovery ;
 int networking_registerhandler (int ,int ,int *,TYPE_1__*) ;

void LANdiscovery_init(DHT *dht)
{
    networking_registerhandler(dht->net, NET_PACKET_LAN_DISCOVERY, &handle_LANdiscovery, dht);
}
