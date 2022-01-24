#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  clusterNode ;
struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {int /*<<< orphan*/  nodes; int /*<<< orphan*/ ** slots; int /*<<< orphan*/ ** migrating_slots_to; int /*<<< orphan*/ ** importing_slots_from; } ;

/* Variables and functions */
 int CLUSTER_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__ server ; 

void FUNC7(clusterNode *delnode) {
    int j;
    dictIterator *di;
    dictEntry *de;

    /* 1) Mark slots as unassigned. */
    for (j = 0; j < CLUSTER_SLOTS; j++) {
        if (server.cluster->importing_slots_from[j] == delnode)
            server.cluster->importing_slots_from[j] = NULL;
        if (server.cluster->migrating_slots_to[j] == delnode)
            server.cluster->migrating_slots_to[j] = NULL;
        if (server.cluster->slots[j] == delnode)
            FUNC0(j);
    }

    /* 2) Remove failure reports. */
    di = FUNC2(server.cluster->nodes);
    while((de = FUNC4(di)) != NULL) {
        clusterNode *node = FUNC3(de);

        if (node == delnode) continue;
        FUNC1(node,delnode);
    }
    FUNC5(di);

    /* 3) Free the node, unlinking it from the cluster. */
    FUNC6(delnode);
}