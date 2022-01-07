
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int loaded_num_nodes; int loaded_nodes_list; } ;
typedef int Node_format ;
typedef TYPE_1__ DHT ;



 int MAX_SAVED_DHT_NODES ;
 int calloc (int ,int) ;
 int fprintf (int ,char*,int,int) ;
 int free (int ) ;
 int stderr ;
 int unpack_nodes (int ,int ,int *,int const*,int,int ) ;

__attribute__((used)) static int dht_load_state_callback(void *outer, const uint8_t *data, uint32_t length, uint16_t type)
{
    DHT *dht = outer;

    switch (type) {
        case 128:
            if (length == 0)
                break;

            {
                free(dht->loaded_nodes_list);

                dht->loaded_nodes_list = calloc(MAX_SAVED_DHT_NODES, sizeof(Node_format));

                int num = unpack_nodes(dht->loaded_nodes_list, MAX_SAVED_DHT_NODES, ((void*)0), data, length, 0);

                if (num > 0) {
                    dht->loaded_num_nodes = num;
                } else {
                    dht->loaded_num_nodes = 0;
                }

            }

            break;
    }

    return 0;
}
