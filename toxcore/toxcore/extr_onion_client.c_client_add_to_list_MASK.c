#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_12__ {int num_friends; int const* temp_public_key; TYPE_2__* friends_list; TYPE_1__* c; TYPE_3__* clients_announce_list; } ;
struct TYPE_11__ {int const* public_key; int const* data_public_key; int const* ping_id; int is_stored; int /*<<< orphan*/  path_used; scalar_t__ last_pinged; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  ip_port; } ;
struct TYPE_10__ {int* real_public_key; TYPE_3__* clients_list; } ;
struct TYPE_9__ {int* self_public_key; } ;
typedef  TYPE_3__ Onion_Node ;
typedef  TYPE_4__ Onion_Client ;
typedef  int /*<<< orphan*/  IP_Port ;

/* Variables and functions */
 unsigned int MAX_ONION_CLIENTS ; 
 unsigned int MAX_ONION_CLIENTS_ANNOUNCE ; 
 int /*<<< orphan*/  ONION_NODE_TIMEOUT ; 
 int /*<<< orphan*/  ONION_PING_ID_SIZE ; 
 int /*<<< orphan*/  cmp_entry ; 
 int const* cmp_public_key ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 int FUNC0 (int*,int const*,int const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int const*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int const*) ; 
 scalar_t__ FUNC4 (int const*,int const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(Onion_Client *onion_c, uint32_t num, const uint8_t *public_key, IP_Port ip_port,
                              uint8_t is_stored, const uint8_t *pingid_or_key, uint32_t path_num)
{
    if (num > onion_c->num_friends)
        return -1;

    Onion_Node *list_nodes = NULL;
    uint8_t *reference_id = NULL;
    unsigned int list_length;

    if (num == 0) {
        list_nodes = onion_c->clients_announce_list;
        reference_id = onion_c->c->self_public_key;
        list_length = MAX_ONION_CLIENTS_ANNOUNCE;

        if (is_stored == 1 && FUNC4(pingid_or_key, onion_c->temp_public_key) != 0) {
            is_stored = 0;
        }

    } else {
        if (is_stored >= 2)
            return -1;

        list_nodes = onion_c->friends_list[num - 1].clients_list;
        reference_id = onion_c->friends_list[num - 1].real_public_key;
        list_length = MAX_ONION_CLIENTS;
    }

    FUNC2(cmp_public_key, reference_id, crypto_box_PUBLICKEYBYTES);
    FUNC5(list_nodes, list_length, sizeof(Onion_Node), cmp_entry);

    int index = -1, stored = 0;
    unsigned int i;

    if (FUNC1(list_nodes[0].timestamp, ONION_NODE_TIMEOUT)
            || FUNC0(reference_id, list_nodes[0].public_key, public_key) == 2) {
        index = 0;
    }

    for (i = 0; i < list_length; ++i) {
        if (FUNC4(list_nodes[i].public_key, public_key) == 0) {
            index = i;
            stored = 1;
            break;
        }
    }

    if (index == -1)
        return 0;

    FUNC2(list_nodes[index].public_key, public_key, crypto_box_PUBLICKEYBYTES);
    list_nodes[index].ip_port = ip_port;

    //TODO: remove this and find a better source of nodes to use for paths.
    FUNC3(onion_c, ip_port, public_key);

    if (is_stored == 1) {
        FUNC2(list_nodes[index].data_public_key, pingid_or_key, crypto_box_PUBLICKEYBYTES);
    } else {
        FUNC2(list_nodes[index].ping_id, pingid_or_key, ONION_PING_ID_SIZE);
    }

    list_nodes[index].is_stored = is_stored;
    list_nodes[index].timestamp = FUNC7();

    if (!stored)
        list_nodes[index].last_pinged = 0;

    list_nodes[index].path_used = FUNC6(onion_c, num, path_num);
    return 0;
}