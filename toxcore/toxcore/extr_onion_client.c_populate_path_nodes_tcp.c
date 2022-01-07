
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int public_key; int ip_port; } ;
struct TYPE_6__ {int c; } ;
typedef TYPE_1__ Onion_Client ;
typedef TYPE_2__ Node_format ;


 int MAX_SENT_NODES ;
 unsigned int copy_connected_tcp_relays (int ,TYPE_2__*,int) ;
 int onion_add_bs_path_node (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void populate_path_nodes_tcp(Onion_Client *onion_c)
{
    Node_format nodes_list[MAX_SENT_NODES];

    unsigned int num_nodes = copy_connected_tcp_relays(onion_c->c, nodes_list, MAX_SENT_NODES);;
    unsigned int i;

    for (i = 0; i < num_nodes; ++i) {
        onion_add_bs_path_node(onion_c, nodes_list[i].ip_port, nodes_list[i].public_key);
    }
}
