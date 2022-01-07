
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* dht; } ;
struct TYPE_10__ {int * c; } ;
struct TYPE_9__ {int * net; } ;
struct TYPE_8__ {TYPE_5__* onion; int onion_a; TYPE_4__* onion_c; } ;
typedef TYPE_1__ Onions ;
typedef int Networking_Core ;
typedef int Net_Crypto ;
typedef TYPE_2__ DHT ;


 int free (TYPE_1__*) ;
 int kill_DHT (TYPE_2__*) ;
 int kill_net_crypto (int *) ;
 int kill_networking (int *) ;
 int kill_onion (TYPE_5__*) ;
 int kill_onion_announce (int ) ;
 int kill_onion_client (TYPE_4__*) ;

void kill_onions(Onions *on)
{
    Networking_Core *net = on->onion->dht->net;
    DHT *dht = on->onion->dht;
    Net_Crypto *c = on->onion_c->c;
    kill_onion_client(on->onion_c);
    kill_onion_announce(on->onion_a);
    kill_onion(on->onion);
    kill_net_crypto(c);
    kill_DHT(dht);
    kill_networking(net);
    free(on);
}
