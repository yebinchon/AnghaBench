
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int public_key; int ip_port; } ;
typedef TYPE_1__ Node_format ;
typedef int IP_Port ;
typedef int DHT ;


 int MAX_SENT_NODES ;
 scalar_t__ handle_sendnodes_core (void*,int ,int const*,int ,TYPE_1__*,int,scalar_t__*) ;
 scalar_t__ ipport_isset (int *) ;
 int ping_node_from_getnodes_ok (int *,int ,int ) ;
 int returnedip_ports (int *,int ,int ,int const*) ;

__attribute__((used)) static int handle_sendnodes_ipv6(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    DHT *dht = object;
    Node_format plain_nodes[MAX_SENT_NODES];
    uint32_t num_nodes;

    if (handle_sendnodes_core(object, source, packet, length, plain_nodes, MAX_SENT_NODES, &num_nodes))
        return 1;

    if (num_nodes == 0)
        return 0;

    uint32_t i;

    for (i = 0; i < num_nodes; i++) {

        if (ipport_isset(&plain_nodes[i].ip_port)) {
            ping_node_from_getnodes_ok(dht, plain_nodes[i].public_key, plain_nodes[i].ip_port);
            returnedip_ports(dht, plain_nodes[i].ip_port, plain_nodes[i].public_key, packet + 1);
        }
    }

    return 0;
}
