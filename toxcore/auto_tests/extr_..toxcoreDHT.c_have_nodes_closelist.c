
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct TYPE_14__ {int self_public_key; } ;
struct TYPE_13__ {int timestamp; } ;
struct TYPE_11__ {int family; } ;
struct TYPE_10__ {TYPE_2__ ip; } ;
struct TYPE_12__ {TYPE_1__ ip_port; int public_key; } ;
typedef TYPE_3__ Node_format ;
typedef TYPE_4__ IPPTsPng ;
typedef TYPE_5__ DHT ;


 int BAD_NODE_TIMEOUT ;
 TYPE_4__* get_closelist_IPPTsPng (TYPE_5__*,int ,int ) ;
 scalar_t__ id_equal (int ,int ) ;
 int is_timeout (int ,int ) ;

__attribute__((used)) static uint32_t have_nodes_closelist(DHT *dht, Node_format *nodes, uint16_t num)
{
    uint32_t counter = 0;
    uint32_t i;

    for (i = 0; i < num; ++i) {
        if (id_equal(nodes[i].public_key, dht->self_public_key)) {
            ++counter;
            continue;
        }

        IPPTsPng *temp = get_closelist_IPPTsPng(dht, nodes[i].public_key, nodes[i].ip_port.ip.family);

        if (temp) {
            if (!is_timeout(temp->timestamp, BAD_NODE_TIMEOUT)) {
                ++counter;
            }
        }
    }

    return counter;
}
