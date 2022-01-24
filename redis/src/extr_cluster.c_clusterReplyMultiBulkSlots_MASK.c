#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_9__ {scalar_t__ numslots; int port; int numslaves; TYPE_5__** slaves; int /*<<< orphan*/  name; int /*<<< orphan*/  ip; } ;
typedef  TYPE_2__ clusterNode ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_11__ {int port; int /*<<< orphan*/  name; int /*<<< orphan*/  ip; } ;
struct TYPE_10__ {TYPE_1__* cluster; } ;
struct TYPE_8__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_NAMELEN ; 
 int CLUSTER_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*,int) ; 

void FUNC13(client *c) {
    /* Format: 1) 1) start slot
     *            2) end slot
     *            3) 1) master IP
     *               2) master port
     *               3) node ID
     *            4) 1) replica IP
     *               2) replica port
     *               3) node ID
     *           ... continued until done
     */

    int num_masters = 0;
    void *slot_replylen = FUNC3(c);

    dictEntry *de;
    dictIterator *di = FUNC6(server.cluster->nodes);
    while((de = FUNC8(di)) != NULL) {
        clusterNode *node = FUNC7(de);
        int j = 0, start = -1;

        /* Skip slaves (that are iterated when producing the output of their
         * master) and  masters not serving any slot. */
        if (!FUNC11(node) || node->numslots == 0) continue;

        for (j = 0; j < CLUSTER_SLOTS; j++) {
            int bit, i;

            if ((bit = FUNC5(node,j)) != 0) {
                if (start == -1) start = j;
            }
            if (start != -1 && (!bit || j == CLUSTER_SLOTS-1)) {
                int nested_elements = 3; /* slots (2) + master addr (1). */
                void *nested_replylen = FUNC3(c);

                if (bit && j == CLUSTER_SLOTS-1) j++;

                /* If slot exists in output map, add to it's list.
                 * else, create a new output map for this slot */
                if (start == j-1) {
                    FUNC4(c, start); /* only one slot; low==high */
                    FUNC4(c, start);
                } else {
                    FUNC4(c, start); /* low */
                    FUNC4(c, j-1);   /* high */
                }
                start = -1;

                /* First node reply position is always the master */
                FUNC0(c, 3);
                FUNC2(c, node->ip);
                FUNC4(c, node->port);
                FUNC1(c, node->name, CLUSTER_NAMELEN);

                /* Remaining nodes in reply are replicas for slot range */
                for (i = 0; i < node->numslaves; i++) {
                    /* This loop is copy/pasted from clusterGenNodeDescription()
                     * with modifications for per-slot node aggregation */
                    if (FUNC10(node->slaves[i])) continue;
                    FUNC0(c, 3);
                    FUNC2(c, node->slaves[i]->ip);
                    FUNC4(c, node->slaves[i]->port);
                    FUNC1(c, node->slaves[i]->name, CLUSTER_NAMELEN);
                    nested_elements++;
                }
                FUNC12(c, nested_replylen, nested_elements);
                num_masters++;
            }
        }
    }
    FUNC9(di);
    FUNC12(c, slot_replylen, num_masters);
}