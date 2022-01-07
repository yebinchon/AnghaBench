
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int data ;
struct TYPE_8__ {int dht_harden_ping_array; int dht_ping_array; } ;
struct TYPE_7__ {int public_key; int ip_port; } ;
typedef TYPE_1__ Node_format ;
typedef int IP_Port ;
typedef TYPE_2__ DHT ;


 int ipport_equal (int *,int *) ;
 int memcpy (TYPE_1__*,int*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ping_array_check (int*,int,int *,int ) ;
 scalar_t__ public_key_cmp (int ,int const*) ;

__attribute__((used)) static uint8_t sent_getnode_to_node(DHT *dht, const uint8_t *public_key, IP_Port node_ip_port, uint64_t ping_id,
                                    Node_format *sendback_node)
{
    uint8_t data[sizeof(Node_format) * 2];

    if (ping_array_check(data, sizeof(data), &dht->dht_ping_array, ping_id) == sizeof(Node_format)) {
        memset(sendback_node, 0, sizeof(Node_format));
    } else if (ping_array_check(data, sizeof(data), &dht->dht_harden_ping_array, ping_id) == sizeof(data)) {
        memcpy(sendback_node, data + sizeof(Node_format), sizeof(Node_format));
    } else {
        return 0;
    }

    Node_format test;
    memcpy(&test, data, sizeof(Node_format));

    if (!ipport_equal(&test.ip_port, &node_ip_port) || public_key_cmp(test.public_key, public_key) != 0)
        return 0;

    return 1;
}
