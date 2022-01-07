
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int onion_c; TYPE_1__* onion; } ;
struct TYPE_4__ {int dht; int net; } ;
typedef TYPE_2__ Onions ;


 int do_DHT (int ) ;
 int do_onion_client (int ) ;
 int networking_poll (int ) ;

void do_onions(Onions *on)
{
    networking_poll(on->onion->net);
    do_DHT(on->onion->dht);
    do_onion_client(on->onion_c);
}
