#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  packet ;
typedef  int /*<<< orphan*/  o_packet ;
struct TYPE_11__ {scalar_t__ num_friends; TYPE_2__* friends_list; int /*<<< orphan*/  onion_paths_friends; TYPE_1__* c; } ;
struct TYPE_10__ {int /*<<< orphan*/  ip_port; int /*<<< orphan*/  data_public_key; scalar_t__ is_stored; int /*<<< orphan*/  timestamp; } ;
struct TYPE_9__ {int /*<<< orphan*/  real_public_key; TYPE_3__* clients_list; } ;
struct TYPE_8__ {int /*<<< orphan*/  self_secret_key; int /*<<< orphan*/  self_public_key; } ;
typedef  int /*<<< orphan*/  Onion_Path ;
typedef  TYPE_3__ Onion_Node ;
typedef  TYPE_4__ Onion_Client ;

/* Variables and functions */
 scalar_t__ DATA_IN_RESPONSE_MIN_SIZE ; 
 scalar_t__ MAX_DATA_REQUEST_SIZE ; 
 int MAX_ONION_CLIENTS ; 
 int ONION_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  ONION_NODE_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC7(Onion_Client *onion_c, int friend_num, const uint8_t *data, uint16_t length)
{
    if ((uint32_t)friend_num >= onion_c->num_friends)
        return -1;

    if (length + DATA_IN_RESPONSE_MIN_SIZE > MAX_DATA_REQUEST_SIZE)
        return -1;

    if (length == 0)
        return -1;

    unsigned int i, good_nodes[MAX_ONION_CLIENTS], num_good = 0, num_nodes = 0;
    Onion_Node *list_nodes = onion_c->friends_list[friend_num].clients_list;

    for (i = 0; i < MAX_ONION_CLIENTS; ++i) {
        if (FUNC2(list_nodes[i].timestamp, ONION_NODE_TIMEOUT))
            continue;

        ++num_nodes;

        if (list_nodes[i].is_stored) {
            good_nodes[num_good] = i;
            ++num_good;
        }
    }

    if (num_good < (num_nodes / 4) + 1)
        return -1;

    uint8_t nonce[crypto_box_NONCEBYTES];
    FUNC4(nonce);

    uint8_t packet[DATA_IN_RESPONSE_MIN_SIZE + length];
    FUNC3(packet, onion_c->c->self_public_key, crypto_box_PUBLICKEYBYTES);
    int len = FUNC1(onion_c->friends_list[friend_num].real_public_key, onion_c->c->self_secret_key, nonce, data,
                           length, packet + crypto_box_PUBLICKEYBYTES);

    if ((uint32_t)len + crypto_box_PUBLICKEYBYTES != sizeof(packet))
        return -1;

    unsigned int good = 0;

    for (i = 0; i < num_good; ++i) {
        Onion_Path path;

        if (FUNC5(onion_c, &onion_c->onion_paths_friends, ~0, &path) == -1)
            continue;

        uint8_t o_packet[ONION_MAX_PACKET_SIZE];
        len = FUNC0(o_packet, sizeof(o_packet), onion_c->friends_list[friend_num].real_public_key,
                                  list_nodes[good_nodes[i]].data_public_key, nonce, packet, sizeof(packet));

        if (len == -1)
            continue;

        if (FUNC6(onion_c, &path, list_nodes[good_nodes[i]].ip_port, o_packet, len) == 0)
            ++good;
    }

    return good;
}