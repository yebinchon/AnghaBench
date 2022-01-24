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
typedef  size_t uint16_t ;
struct TYPE_11__ {size_t num_friends; unsigned int path_nodes_index; TYPE_2__* friends_list; TYPE_1__* path_nodes; } ;
struct TYPE_10__ {scalar_t__ timestamp; scalar_t__ last_pinged; int /*<<< orphan*/  public_key; int /*<<< orphan*/  ip_port; } ;
struct TYPE_9__ {scalar_t__ status; scalar_t__ run_count; scalar_t__ last_dht_pk_onion_sent; scalar_t__ last_dht_pk_dht_sent; int /*<<< orphan*/  is_online; TYPE_3__* clients_list; } ;
struct TYPE_8__ {int /*<<< orphan*/  public_key; int /*<<< orphan*/  ip_port; } ;
typedef  TYPE_3__ Onion_Node ;
typedef  TYPE_4__ Onion_Client ;

/* Variables and functions */
 unsigned int ANNOUNCE_FRIEND ; 
 unsigned int ANNOUNCE_FRIEND_BEGINNING ; 
 unsigned int DHT_DHTPK_SEND_INTERVAL ; 
 unsigned int FRIEND_ONION_NODE_TIMEOUT ; 
 unsigned int MAX_ONION_CLIENTS ; 
 unsigned int MAX_PATH_NODES ; 
 unsigned int ONION_DHTPK_SEND_INTERVAL ; 
 scalar_t__ RUN_COUNT_FRIEND_ANNOUNCE_BEGINNING ; 
 scalar_t__ FUNC0 (TYPE_4__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,unsigned int) ; 
 unsigned int FUNC2 () ; 
 int FUNC3 (TYPE_4__*,size_t,int) ; 
 void* FUNC4 () ; 

__attribute__((used)) static void FUNC5(Onion_Client *onion_c, uint16_t friendnum)
{
    if (friendnum >= onion_c->num_friends)
        return;

    if (onion_c->friends_list[friendnum].status == 0)
        return;

    unsigned int interval = ANNOUNCE_FRIEND;

    if (onion_c->friends_list[friendnum].run_count < RUN_COUNT_FRIEND_ANNOUNCE_BEGINNING)
        interval = ANNOUNCE_FRIEND_BEGINNING;

    unsigned int i, count = 0;
    Onion_Node *list_nodes = onion_c->friends_list[friendnum].clients_list;

    if (!onion_c->friends_list[friendnum].is_online) {
        for (i = 0; i < MAX_ONION_CLIENTS; ++i) {
            if (FUNC1(list_nodes[i].timestamp, FRIEND_ONION_NODE_TIMEOUT))
                continue;

            ++count;


            if (list_nodes[i].last_pinged == 0) {
                list_nodes[i].last_pinged = FUNC4();
                continue;
            }

            if (FUNC1(list_nodes[i].last_pinged, interval)) {
                if (FUNC0(onion_c, friendnum + 1, list_nodes[i].ip_port, list_nodes[i].public_key, 0, ~0) == 0) {
                    list_nodes[i].last_pinged = FUNC4();
                }
            }
        }

        if (count != MAX_ONION_CLIENTS) {
            unsigned int num_nodes = (onion_c->path_nodes_index < MAX_PATH_NODES) ? onion_c->path_nodes_index : MAX_PATH_NODES;

            unsigned int n = num_nodes;

            if (num_nodes > (MAX_ONION_CLIENTS / 2))
                n = (MAX_ONION_CLIENTS / 2);

            if (num_nodes != 0) {
                unsigned int j;

                for (j = 0; j < n; ++j) {
                    unsigned int num = FUNC2() % num_nodes;
                    FUNC0(onion_c, friendnum + 1, onion_c->path_nodes[num].ip_port,
                                                 onion_c->path_nodes[num].public_key, 0, ~0);
                }

                ++onion_c->friends_list[friendnum].run_count;
            }
        } else {
            ++onion_c->friends_list[friendnum].run_count;
        }

        /* send packets to friend telling them our DHT public key. */
        if (FUNC1(onion_c->friends_list[friendnum].last_dht_pk_onion_sent, ONION_DHTPK_SEND_INTERVAL))
            if (FUNC3(onion_c, friendnum, 0) >= 1)
                onion_c->friends_list[friendnum].last_dht_pk_onion_sent = FUNC4();

        if (FUNC1(onion_c->friends_list[friendnum].last_dht_pk_dht_sent, DHT_DHTPK_SEND_INTERVAL))
            if (FUNC3(onion_c, friendnum, 1) >= 1)
                onion_c->friends_list[friendnum].last_dht_pk_dht_sent = FUNC4();

    }
}