
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ numfriends; struct TYPE_5__* friendlist; int net; int dht; int net_crypto; int onion_c; int onion_a; int onion; int fr_c; scalar_t__ tcp_server; } ;
typedef TYPE_1__ Messenger ;


 int clear_receipts (TYPE_1__*,scalar_t__) ;
 int free (TYPE_1__*) ;
 int kill_DHT (int ) ;
 int kill_TCP_server (scalar_t__) ;
 int kill_friend_connections (int ) ;
 int kill_net_crypto (int ) ;
 int kill_networking (int ) ;
 int kill_onion (int ) ;
 int kill_onion_announce (int ) ;
 int kill_onion_client (int ) ;

void kill_messenger(Messenger *m)
{
    if (!m)
        return;

    uint32_t i;

    if (m->tcp_server) {
        kill_TCP_server(m->tcp_server);
    }

    kill_friend_connections(m->fr_c);
    kill_onion(m->onion);
    kill_onion_announce(m->onion_a);
    kill_onion_client(m->onion_c);
    kill_net_crypto(m->net_crypto);
    kill_DHT(m->dht);
    kill_networking(m->net);

    for (i = 0; i < m->numfriends; ++i) {
        clear_receipts(m, i);
    }

    free(m->friendlist);
    free(m);
}
