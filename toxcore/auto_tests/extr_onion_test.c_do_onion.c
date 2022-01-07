
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dht; int net; } ;
typedef TYPE_1__ Onion ;


 int do_DHT (int ) ;
 int networking_poll (int ) ;

void do_onion(Onion *onion)
{
    networking_poll(onion->net);
    do_DHT(onion->dht);
}
