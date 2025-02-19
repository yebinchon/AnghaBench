
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int t ;
typedef int sa_family_t ;
typedef int nodes_list ;
typedef int Node_format ;
typedef int DHT ;


 int MAX_SENT_NODES ;
 int crypto_box_PUBLICKEYBYTES ;
 int get_close_nodes (int *,int *,int *,int ,int,int ) ;
 int memcpy (int *,int*,int) ;
 int memset (int *,int ,int) ;
 int rand () ;

Node_format random_node(DHT *dht, sa_family_t sa_family)
{
    uint8_t id[crypto_box_PUBLICKEYBYTES];
    uint32_t i;

    for (i = 0; i < crypto_box_PUBLICKEYBYTES / 4; ++i) {
        uint32_t t = rand();
        memcpy(id + i * sizeof(t), &t, sizeof(t));
    }

    Node_format nodes_list[MAX_SENT_NODES];
    memset(nodes_list, 0, sizeof(nodes_list));
    uint32_t num_nodes = get_close_nodes(dht, id, nodes_list, sa_family, 1, 0);

    if (num_nodes == 0)
        return nodes_list[0];
    else
        return nodes_list[rand() % num_nodes];
}
