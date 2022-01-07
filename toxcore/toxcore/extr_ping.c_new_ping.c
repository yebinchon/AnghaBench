
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int net; } ;
struct TYPE_8__ {TYPE_2__* dht; int ping_array; } ;
typedef TYPE_1__ PING ;
typedef TYPE_2__ DHT ;


 int NET_PACKET_PING_REQUEST ;
 int NET_PACKET_PING_RESPONSE ;
 int PING_NUM_MAX ;
 int PING_TIMEOUT ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int handle_ping_request ;
 int handle_ping_response ;
 int networking_registerhandler (int ,int ,int *,TYPE_2__*) ;
 scalar_t__ ping_array_init (int *,int ,int ) ;

PING *new_ping(DHT *dht)
{
    PING *ping = calloc(1, sizeof(PING));

    if (ping == ((void*)0))
        return ((void*)0);

    if (ping_array_init(&ping->ping_array, PING_NUM_MAX, PING_TIMEOUT) != 0) {
        free(ping);
        return ((void*)0);
    }

    ping->dht = dht;
    networking_registerhandler(ping->dht->net, NET_PACKET_PING_REQUEST, &handle_ping_request, dht);
    networking_registerhandler(ping->dht->net, NET_PACKET_PING_RESPONSE, &handle_ping_response, dht);

    return ping;
}
