
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_8__ {scalar_t__ crypto_connections_length; TYPE_1__* dht; int ip_port_list; int tcp_c; int connections_mutex; int tcp_mutex; } ;
struct TYPE_7__ {int net; } ;
typedef TYPE_2__ Net_Crypto ;


 int NET_PACKET_COOKIE_REQUEST ;
 int NET_PACKET_COOKIE_RESPONSE ;
 int NET_PACKET_CRYPTO_DATA ;
 int NET_PACKET_CRYPTO_HS ;
 int bs_list_free (int *) ;
 int crypto_kill (TYPE_2__*,scalar_t__) ;
 int free (TYPE_2__*) ;
 int kill_tcp_connections (int ) ;
 int networking_registerhandler (int ,int ,int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 int sodium_memzero (TYPE_2__*,int) ;

void kill_net_crypto(Net_Crypto *c)
{
    uint32_t i;

    for (i = 0; i < c->crypto_connections_length; ++i) {
        crypto_kill(c, i);
    }

    pthread_mutex_destroy(&c->tcp_mutex);
    pthread_mutex_destroy(&c->connections_mutex);

    kill_tcp_connections(c->tcp_c);
    bs_list_free(&c->ip_port_list);
    networking_registerhandler(c->dht->net, NET_PACKET_COOKIE_REQUEST, ((void*)0), ((void*)0));
    networking_registerhandler(c->dht->net, NET_PACKET_COOKIE_RESPONSE, ((void*)0), ((void*)0));
    networking_registerhandler(c->dht->net, NET_PACKET_CRYPTO_HS, ((void*)0), ((void*)0));
    networking_registerhandler(c->dht->net, NET_PACKET_CRYPTO_DATA, ((void*)0), ((void*)0));
    sodium_memzero(c, sizeof(Net_Crypto));
    free(c);
}
