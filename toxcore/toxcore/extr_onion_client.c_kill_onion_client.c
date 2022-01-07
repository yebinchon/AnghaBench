
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* c; int dht; int net; int announce_ping_array; } ;
struct TYPE_8__ {int tcp_c; } ;
typedef TYPE_2__ Onion_Client ;


 int CRYPTO_PACKET_DHTPK ;
 int NET_PACKET_ANNOUNCE_RESPONSE ;
 int NET_PACKET_ONION_DATA_RESPONSE ;
 int ONION_DATA_DHTPK ;
 int cryptopacket_registerhandler (int ,int ,int *,int *) ;
 int free (TYPE_2__*) ;
 int networking_registerhandler (int ,int ,int *,int *) ;
 int oniondata_registerhandler (TYPE_2__*,int ,int *,int *) ;
 int ping_array_free_all (int *) ;
 int realloc_onion_friends (TYPE_2__*,int ) ;
 int set_onion_packet_tcp_connection_callback (int ,int *,int *) ;
 int sodium_memzero (TYPE_2__*,int) ;

void kill_onion_client(Onion_Client *onion_c)
{
    if (onion_c == ((void*)0))
        return;

    ping_array_free_all(&onion_c->announce_ping_array);
    realloc_onion_friends(onion_c, 0);
    networking_registerhandler(onion_c->net, NET_PACKET_ANNOUNCE_RESPONSE, ((void*)0), ((void*)0));
    networking_registerhandler(onion_c->net, NET_PACKET_ONION_DATA_RESPONSE, ((void*)0), ((void*)0));
    oniondata_registerhandler(onion_c, ONION_DATA_DHTPK, ((void*)0), ((void*)0));
    cryptopacket_registerhandler(onion_c->dht, CRYPTO_PACKET_DHTPK, ((void*)0), ((void*)0));
    set_onion_packet_tcp_connection_callback(onion_c->c->tcp_c, ((void*)0), ((void*)0));
    sodium_memzero(onion_c, sizeof(Onion_Client));
    free(onion_c);
}
