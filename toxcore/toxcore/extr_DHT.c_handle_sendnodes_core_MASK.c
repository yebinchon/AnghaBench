#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  plain ;
typedef  int /*<<< orphan*/  ping_id ;
typedef  int /*<<< orphan*/  Node_format ;
typedef  int /*<<< orphan*/  IP_Port ;
typedef  int /*<<< orphan*/  DHT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__ const*) ; 
 int MAX_SENT_NODES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__ const*) ; 
 int crypto_box_BEFORENMBYTES ; 
 int crypto_box_MACBYTES ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC2 (scalar_t__*,scalar_t__ const*,scalar_t__ const*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__ const*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void *object, IP_Port source, const uint8_t *packet, uint16_t length,
                                 Node_format *plain_nodes, uint16_t size_plain_nodes, uint32_t *num_nodes_out)
{
    DHT *dht = object;
    uint32_t cid_size = 1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES + 1 + sizeof(uint64_t) + crypto_box_MACBYTES;

    if (length < cid_size) /* too short */
        return 1;

    uint32_t data_size = length - cid_size;

    if (data_size == 0)
        return 1;

    if (data_size > sizeof(Node_format) * MAX_SENT_NODES) /* invalid length */
        return 1;

    uint8_t plain[1 + data_size + sizeof(uint64_t)];
    uint8_t shared_key[crypto_box_BEFORENMBYTES];
    FUNC0(dht, shared_key, packet + 1);
    int len = FUNC2(
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
    FUNC3(&ping_id, plain + 1 + data_size, sizeof(ping_id));

    if (!FUNC5(dht, packet + 1, source, ping_id, &sendback_node))
        return 1;

    uint16_t length_nodes = 0;
    int num_nodes = FUNC6(plain_nodes, plain[0], &length_nodes, plain + 1, data_size, 0);

    if (length_nodes != data_size)
        return 1;

    if (num_nodes != plain[0])
        return 1;

    if (num_nodes < 0)
        return 1;

    /* store the address the *request* was sent to */
    FUNC1(dht, source, packet + 1);

    *num_nodes_out = num_nodes;

    FUNC4(dht, &sendback_node, packet + 1, plain + 1, data_size);
    return 0;
}