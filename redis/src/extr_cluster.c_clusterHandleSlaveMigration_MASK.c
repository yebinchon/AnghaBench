#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_13__ {int numslaves; int flags; scalar_t__ numslots; scalar_t__ orphaned_time; int /*<<< orphan*/  name; struct TYPE_13__** slaves; struct TYPE_13__* slaveof; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_14__ {int cluster_migration_barrier; int cluster_module_flags; TYPE_1__* cluster; } ;
struct TYPE_12__ {scalar_t__ state; int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int CLUSTER_MODULE_FLAG_NO_FAILOVER ; 
 int /*<<< orphan*/  CLUSTER_NAMELEN ; 
 int CLUSTER_NODE_MIGRATE_TO ; 
 scalar_t__ CLUSTER_OK ; 
 scalar_t__ CLUSTER_SLAVE_MIGRATION_DELAY ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 TYPE_2__* myself ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC13(int max_slaves) {
    int j, okslaves = 0;
    clusterNode *mymaster = myself->slaveof, *target = NULL, *candidate = NULL;
    dictIterator *di;
    dictEntry *de;

    /* Step 1: Don't migrate if the cluster state is not ok. */
    if (server.cluster->state != CLUSTER_OK) return;

    /* Step 2: Don't migrate if my master will not be left with at least
     *         'migration-barrier' slaves after my migration. */
    if (mymaster == NULL) return;
    for (j = 0; j < mymaster->numslaves; j++)
        if (!FUNC8(mymaster->slaves[j]) &&
            !FUNC11(mymaster->slaves[j])) okslaves++;
    if (okslaves <= server.cluster_migration_barrier) return;

    /* Step 3: Identify a candidate for migration, and check if among the
     * masters with the greatest number of ok slaves, I'm the one with the
     * smallest node ID (the "candidate slave").
     *
     * Note: this means that eventually a replica migration will occur
     * since slaves that are reachable again always have their FAIL flag
     * cleared, so eventually there must be a candidate. At the same time
     * this does not mean that there are no race conditions possible (two
     * slaves migrating at the same time), but this is unlikely to
     * happen, and harmless when happens. */
    candidate = myself;
    di = FUNC2(server.cluster->nodes);
    while((de = FUNC4(di)) != NULL) {
        clusterNode *node = FUNC3(de);
        int okslaves = 0, is_orphaned = 1;

        /* We want to migrate only if this master is working, orphaned, and
         * used to have slaves or if failed over a master that had slaves
         * (MIGRATE_TO flag). This way we only migrate to instances that were
         * supposed to have replicas. */
        if (FUNC10(node) || FUNC8(node)) is_orphaned = 0;
        if (!(node->flags & CLUSTER_NODE_MIGRATE_TO)) is_orphaned = 0;

        /* Check number of working slaves. */
        if (FUNC9(node)) okslaves = FUNC0(node);
        if (okslaves > 0) is_orphaned = 0;

        if (is_orphaned) {
            if (!target && node->numslots > 0) target = node;

            /* Track the starting time of the orphaned condition for this
             * master. */
            if (!node->orphaned_time) node->orphaned_time = FUNC7();
        } else {
            node->orphaned_time = 0;
        }

        /* Check if I'm the slave candidate for the migration: attached
         * to a master with the maximum number of slaves and with the smallest
         * node ID. */
        if (okslaves == max_slaves) {
            for (j = 0; j < node->numslaves; j++) {
                if (FUNC6(node->slaves[j]->name,
                           candidate->name,
                           CLUSTER_NAMELEN) < 0)
                {
                    candidate = node->slaves[j];
                }
            }
        }
    }
    FUNC5(di);

    /* Step 4: perform the migration if there is a target, and if I'm the
     * candidate, but only if the master is continuously orphaned for a
     * couple of seconds, so that during failovers, we give some time to
     * the natural slaves of this instance to advertise their switch from
     * the old master to the new one. */
    if (target && candidate == myself &&
        (FUNC7()-target->orphaned_time) > CLUSTER_SLAVE_MIGRATION_DELAY &&
       !(server.cluster_module_flags & CLUSTER_MODULE_FLAG_NO_FAILOVER))
    {
        FUNC12(LL_WARNING,"Migrating to orphaned master %.40s",
            target->name);
        FUNC1(target);
    }
}