
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ping_array; TYPE_1__* dht; } ;
struct TYPE_5__ {int net; } ;
typedef TYPE_2__ PING ;


 int NET_PACKET_PING_REQUEST ;
 int NET_PACKET_PING_RESPONSE ;
 int free (TYPE_2__*) ;
 int networking_registerhandler (int ,int ,int *,int *) ;
 int ping_array_free_all (int *) ;

void kill_ping(PING *ping)
{
    networking_registerhandler(ping->dht->net, NET_PACKET_PING_REQUEST, ((void*)0), ((void*)0));
    networking_registerhandler(ping->dht->net, NET_PACKET_PING_RESPONSE, ((void*)0), ((void*)0));
    ping_array_free_all(&ping->ping_array);

    free(ping);
}
