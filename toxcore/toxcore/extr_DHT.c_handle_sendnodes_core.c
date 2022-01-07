
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int plain ;
typedef int ping_id ;
typedef int Node_format ;
typedef int IP_Port ;
typedef int DHT ;


 int DHT_get_shared_key_sent (int *,scalar_t__*,scalar_t__ const*) ;
 int MAX_SENT_NODES ;
 int addto_lists (int *,int ,scalar_t__ const*) ;
 int crypto_box_BEFORENMBYTES ;
 int crypto_box_MACBYTES ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int decrypt_data_symmetric (scalar_t__*,scalar_t__ const*,scalar_t__ const*,int,scalar_t__*) ;
 int memcpy (int *,scalar_t__*,int) ;
 int send_hardening_getnode_res (int *,int *,scalar_t__ const*,scalar_t__*,scalar_t__) ;
 int sent_getnode_to_node (int *,scalar_t__ const*,int ,int ,int *) ;
 int unpack_nodes (int *,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__,int ) ;

__attribute__((used)) static int handle_sendnodes_core(void *object, IP_Port source, const uint8_t *packet, uint16_t length,
                                 Node_format *plain_nodes, uint16_t size_plain_nodes, uint32_t *num_nodes_out)
{
    DHT *dht = object;
    uint32_t cid_size = 1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES + 1 + sizeof(uint64_t) + crypto_box_MACBYTES;

    if (length < cid_size)
        return 1;

    uint32_t data_size = length - cid_size;

    if (data_size == 0)
        return 1;

    if (data_size > sizeof(Node_format) * MAX_SENT_NODES)
        return 1;

    uint8_t plain[1 + data_size + sizeof(uint64_t)];
    uint8_t shared_key[crypto_box_BEFORENMBYTES];
    DHT_get_shared_key_sent(dht, shared_key, packet + 1);
    int len = decrypt_data_symmetric(
                  shared_key,
                  packet + 1 + crypto_box_PUBLICKEYBYTES,
                  packet + 1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES,
                  1 + data_size + sizeof(uint64_t) + crypto_box_MACBYTES,
                  plain);

    if ((unsigned int)len != sizeof(plain))
        return 1;

    if (plain[0] > size_plain_nodes)
        return 1;

    Node_format sendback_node;

    uint64_t ping_id;
    memcpy(&ping_id, plain + 1 + data_size, sizeof(ping_id));

    if (!sent_getnode_to_node(dht, packet + 1, source, ping_id, &sendback_node))
        return 1;

    uint16_t length_nodes = 0;
    int num_nodes = unpack_nodes(plain_nodes, plain[0], &length_nodes, plain + 1, data_size, 0);

    if (length_nodes != data_size)
        return 1;

    if (num_nodes != plain[0])
        return 1;

    if (num_nodes < 0)
        return 1;


    addto_lists(dht, source, packet + 1);

    *num_nodes_out = num_nodes;

    send_hardening_getnode_res(dht, &sendback_node, packet + 1, plain + 1, data_size);
    return 0;
}
