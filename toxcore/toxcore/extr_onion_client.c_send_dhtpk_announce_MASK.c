#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  no_replay ;
struct TYPE_7__ {int /*<<< orphan*/ * self_public_key; } ;
struct TYPE_6__ {scalar_t__ num_friends; TYPE_5__* dht; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ Onion_Client ;
typedef  int /*<<< orphan*/  Node_format ;

/* Variables and functions */
 int DHTPK_DATA_MAX_LENGTH ; 
 int DHTPK_DATA_MIN_LENGTH ; 
 int MAX_SENT_NODES ; 
 int ONION_DATA_DHTPK ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (TYPE_1__*,scalar_t__,int*,int) ; 
 int FUNC6 (TYPE_1__*,scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(Onion_Client *onion_c, uint16_t friend_num, uint8_t onion_dht_both)
{
    if (friend_num >= onion_c->num_friends)
        return -1;

    uint8_t data[DHTPK_DATA_MAX_LENGTH];
    data[0] = ONION_DATA_DHTPK;
    uint64_t no_replay = FUNC7();
    FUNC2((uint8_t *)&no_replay, sizeof(no_replay));
    FUNC3(data + 1, &no_replay, sizeof(no_replay));
    FUNC3(data + 1 + sizeof(uint64_t), onion_c->dht->self_public_key, crypto_box_PUBLICKEYBYTES);
    Node_format nodes[MAX_SENT_NODES];
    uint16_t num_relays = FUNC1(onion_c->c, nodes, (MAX_SENT_NODES / 2));
    uint16_t num_nodes = FUNC0(onion_c->dht, &nodes[num_relays], MAX_SENT_NODES - num_relays);
    num_nodes += num_relays;
    int nodes_len = 0;

    if (num_nodes != 0) {
        nodes_len = FUNC4(data + DHTPK_DATA_MIN_LENGTH, DHTPK_DATA_MAX_LENGTH - DHTPK_DATA_MIN_LENGTH, nodes,
                               num_nodes);

        if (nodes_len <= 0)
            return -1;
    }

    int num1 = -1, num2 = -1;

    if (onion_dht_both != 1)
        num1 = FUNC6(onion_c, friend_num, data, DHTPK_DATA_MIN_LENGTH + nodes_len);

    if (onion_dht_both != 0)
        num2 = FUNC5(onion_c, friend_num, data, DHTPK_DATA_MIN_LENGTH + nodes_len);

    if (num1 == -1)
        return num2;

    if (num2 == -1)
        return num1;

    return num1 + num2;
}