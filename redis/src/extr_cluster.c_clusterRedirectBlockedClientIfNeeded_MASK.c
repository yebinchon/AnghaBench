#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ ptr; } ;
typedef  TYPE_3__ robj ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  clusterNode ;
struct TYPE_9__ {int /*<<< orphan*/  keys; } ;
struct TYPE_12__ {int flags; scalar_t__ btype; TYPE_1__ bpop; } ;
typedef  TYPE_4__ client ;
struct TYPE_13__ {TYPE_2__* cluster; } ;
struct TYPE_10__ {scalar_t__ state; int /*<<< orphan*/ ** importing_slots_from; int /*<<< orphan*/ ** slots; } ;

/* Variables and functions */
 scalar_t__ BLOCKED_LIST ; 
 scalar_t__ BLOCKED_STREAM ; 
 scalar_t__ BLOCKED_ZSET ; 
 int CLIENT_BLOCKED ; 
 scalar_t__ CLUSTER_FAIL ; 
 int /*<<< orphan*/  CLUSTER_REDIR_DOWN_STATE ; 
 int /*<<< orphan*/  CLUSTER_REDIR_DOWN_UNBOUND ; 
 int /*<<< orphan*/  CLUSTER_REDIR_MOVED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * myself ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 TYPE_5__ server ; 

int FUNC7(client *c) {
    if (c->flags & CLIENT_BLOCKED &&
        (c->btype == BLOCKED_LIST ||
         c->btype == BLOCKED_ZSET ||
         c->btype == BLOCKED_STREAM))
    {
        dictEntry *de;
        dictIterator *di;

        /* If the cluster is down, unblock the client with the right error. */
        if (server.cluster->state == CLUSTER_FAIL) {
            FUNC0(c,NULL,0,CLUSTER_REDIR_DOWN_STATE);
            return 1;
        }

        /* All keys must belong to the same slot, so check first key only. */
        di = FUNC1(c->bpop.keys);
        if ((de = FUNC3(di)) != NULL) {
            robj *key = FUNC2(de);
            int slot = FUNC5((char*)key->ptr, FUNC6(key->ptr));
            clusterNode *node = server.cluster->slots[slot];

            /* We send an error and unblock the client if:
             * 1) The slot is unassigned, emitting a cluster down error.
             * 2) The slot is not handled by this node, nor being imported. */
            if (node != myself &&
                server.cluster->importing_slots_from[slot] == NULL)
            {
                if (node == NULL) {
                    FUNC0(c,NULL,0,
                        CLUSTER_REDIR_DOWN_UNBOUND);
                } else {
                    FUNC0(c,node,slot,
                        CLUSTER_REDIR_MOVED);
                }
                FUNC4(di);
                return 1;
            }
        }
        FUNC4(di);
    }
    return 0;
}