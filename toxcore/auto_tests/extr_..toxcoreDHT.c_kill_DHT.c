
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* loaded_nodes_list; struct TYPE_5__* friends_list; int ping; int dht_harden_ping_array; int dht_ping_array; int net; int assoc; } ;
typedef TYPE_1__ DHT ;


 int CRYPTO_PACKET_HARDENING ;
 int CRYPTO_PACKET_NAT_PING ;
 int NET_PACKET_GET_NODES ;
 int NET_PACKET_SEND_NODES_IPV6 ;
 int cryptopacket_registerhandler (TYPE_1__*,int ,int *,int *) ;
 int free (TYPE_1__*) ;
 int kill_Assoc (int ) ;
 int kill_ping (int ) ;
 int networking_registerhandler (int ,int ,int *,int *) ;
 int ping_array_free_all (int *) ;

void kill_DHT(DHT *dht)
{



    networking_registerhandler(dht->net, NET_PACKET_GET_NODES, ((void*)0), ((void*)0));
    networking_registerhandler(dht->net, NET_PACKET_SEND_NODES_IPV6, ((void*)0), ((void*)0));
    cryptopacket_registerhandler(dht, CRYPTO_PACKET_NAT_PING, ((void*)0), ((void*)0));
    cryptopacket_registerhandler(dht, CRYPTO_PACKET_HARDENING, ((void*)0), ((void*)0));
    ping_array_free_all(&dht->dht_ping_array);
    ping_array_free_all(&dht->dht_harden_ping_array);
    kill_ping(dht->ping);
    free(dht->friends_list);
    free(dht->loaded_nodes_list);
    free(dht);
}
