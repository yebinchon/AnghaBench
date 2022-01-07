
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int public_key; int ip_port; } ;
struct TYPE_6__ {int dht; } ;
typedef TYPE_1__ Onion_Client ;
typedef TYPE_2__ Node_format ;


 int MAX_FRIEND_CLIENTS ;
 int onion_add_path_node (TYPE_1__*,int ,int ) ;
 unsigned int randfriends_nodes (int ,TYPE_2__*,int) ;

__attribute__((used)) static void populate_path_nodes(Onion_Client *onion_c)
{
    Node_format nodes_list[MAX_FRIEND_CLIENTS];

    unsigned int num_nodes = randfriends_nodes(onion_c->dht, nodes_list, MAX_FRIEND_CLIENTS);

    unsigned int i;

    for (i = 0; i < num_nodes; ++i) {
        onion_add_path_node(onion_c, nodes_list[i].ip_port, nodes_list[i].public_key);
    }
}
