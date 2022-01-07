
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_7__ {scalar_t__ family; } ;
struct TYPE_10__ {TYPE_1__ ip; } ;
struct TYPE_9__ {unsigned int path_nodes_index_bs; TYPE_2__* path_nodes_bs; } ;
struct TYPE_8__ {int public_key; TYPE_4__ ip_port; } ;
typedef TYPE_3__ Onion_Client ;
typedef TYPE_4__ IP_Port ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 unsigned int MAX_PATH_NODES ;
 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int ,int const*,int ) ;
 scalar_t__ public_key_cmp (int const*,int ) ;

int onion_add_bs_path_node(Onion_Client *onion_c, IP_Port ip_port, const uint8_t *public_key)
{
    if (ip_port.ip.family != AF_INET && ip_port.ip.family != AF_INET6)
        return -1;

    unsigned int i;

    for (i = 0; i < MAX_PATH_NODES; ++i) {
        if (public_key_cmp(public_key, onion_c->path_nodes_bs[i].public_key) == 0)
            return -1;
    }

    onion_c->path_nodes_bs[onion_c->path_nodes_index_bs % MAX_PATH_NODES].ip_port = ip_port;
    memcpy(onion_c->path_nodes_bs[onion_c->path_nodes_index_bs % MAX_PATH_NODES].public_key, public_key,
           crypto_box_PUBLICKEYBYTES);

    uint16_t last = onion_c->path_nodes_index_bs;
    ++onion_c->path_nodes_index_bs;

    if (onion_c->path_nodes_index_bs < last)
        onion_c->path_nodes_index_bs = MAX_PATH_NODES + 1;

    return 0;
}
