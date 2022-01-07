
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int public_key; int ip_port; } ;
struct TYPE_6__ {unsigned int loaded_num_nodes; unsigned int loaded_nodes_index; TYPE_2__* loaded_nodes_list; } ;
typedef TYPE_1__ DHT ;


 int DHT_bootstrap (TYPE_1__*,int ,int ) ;
 scalar_t__ DHT_non_lan_connected (TYPE_1__*) ;
 unsigned int SAVE_BOOTSTAP_FREQUENCY ;
 int free (TYPE_2__*) ;

int DHT_connect_after_load(DHT *dht)
{
    if (dht == ((void*)0))
        return -1;

    if (!dht->loaded_nodes_list)
        return -1;


    if (DHT_non_lan_connected(dht)) {
        free(dht->loaded_nodes_list);
        dht->loaded_nodes_list = ((void*)0);
        dht->loaded_num_nodes = 0;
        return 0;
    }

    unsigned int i;

    for (i = 0; i < dht->loaded_num_nodes && i < SAVE_BOOTSTAP_FREQUENCY; ++i) {
        unsigned int index = dht->loaded_nodes_index % dht->loaded_num_nodes;
        DHT_bootstrap(dht, dht->loaded_nodes_list[index].ip_port, dht->loaded_nodes_list[index].public_key);
        ++dht->loaded_nodes_index;
    }

    return 0;
}
