
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ last_run; scalar_t__ assoc; int ping; scalar_t__ loaded_num_nodes; } ;
typedef TYPE_1__ DHT ;


 int DHT_connect_after_load (TYPE_1__*) ;
 int do_Assoc (scalar_t__,TYPE_1__*) ;
 int do_Close (TYPE_1__*) ;
 int do_DHT_friends (TYPE_1__*) ;
 int do_NAT (TYPE_1__*) ;
 int do_to_ping (int ) ;
 scalar_t__ unix_time () ;
 int unix_time_update () ;

void do_DHT(DHT *dht)
{
    unix_time_update();

    if (dht->last_run == unix_time()) {
        return;
    }


    if (dht->loaded_num_nodes) {
        DHT_connect_after_load(dht);
    }

    do_Close(dht);
    do_DHT_friends(dht);
    do_NAT(dht);
    do_to_ping(dht->ping);







    dht->last_run = unix_time();
}
