#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_15__ {int voted_time; int /*<<< orphan*/  name; struct TYPE_15__* slaveof; } ;
typedef  TYPE_3__ clusterNode ;
struct TYPE_16__ {unsigned char* myslots; int* mflags; int /*<<< orphan*/  configEpoch; int /*<<< orphan*/  currentEpoch; } ;
typedef  TYPE_4__ clusterMsg ;
struct TYPE_18__ {scalar_t__ numslots; } ;
struct TYPE_17__ {int cluster_node_timeout; TYPE_2__* cluster; } ;
struct TYPE_14__ {scalar_t__ currentEpoch; scalar_t__ lastVoteEpoch; TYPE_1__** slots; } ;
struct TYPE_13__ {scalar_t__ configEpoch; } ;

/* Variables and functions */
 int CLUSTERMSG_FLAG0_FORCEACK ; 
 int CLUSTER_SLOTS ; 
 int CLUSTER_TODO_FSYNC_CONFIG ; 
 int CLUSTER_TODO_SAVE_CONFIG ; 
 int /*<<< orphan*/  LL_WARNING ; 
 scalar_t__ FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 () ; 
 TYPE_6__* myself ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

void FUNC9(clusterNode *node, clusterMsg *request) {
    clusterNode *master = node->slaveof;
    uint64_t requestCurrentEpoch = FUNC7(request->currentEpoch);
    uint64_t requestConfigEpoch = FUNC7(request->configEpoch);
    unsigned char *claimed_slots = request->myslots;
    int force_ack = request->mflags[0] & CLUSTERMSG_FLAG0_FORCEACK;
    int j;

    /* IF we are not a master serving at least 1 slot, we don't have the
     * right to vote, as the cluster size in Redis Cluster is the number
     * of masters serving at least one slot, and quorum is the cluster
     * size + 1 */
    if (FUNC6(myself) || myself->numslots == 0) return;

    /* Request epoch must be >= our currentEpoch.
     * Note that it is impossible for it to actually be greater since
     * our currentEpoch was updated as a side effect of receiving this
     * request, if the request epoch was greater. */
    if (requestCurrentEpoch < server.cluster->currentEpoch) {
        FUNC8(LL_WARNING,
            "Failover auth denied to %.40s: reqEpoch (%llu) < curEpoch(%llu)",
            node->name,
            (unsigned long long) requestCurrentEpoch,
            (unsigned long long) server.cluster->currentEpoch);
        return;
    }

    /* I already voted for this epoch? Return ASAP. */
    if (server.cluster->lastVoteEpoch == server.cluster->currentEpoch) {
        FUNC8(LL_WARNING,
                "Failover auth denied to %.40s: already voted for epoch %llu",
                node->name,
                (unsigned long long) server.cluster->currentEpoch);
        return;
    }

    /* Node must be a slave and its master down.
     * The master can be non failing if the request is flagged
     * with CLUSTERMSG_FLAG0_FORCEACK (manual failover). */
    if (FUNC5(node) || master == NULL ||
        (!FUNC4(master) && !force_ack))
    {
        if (FUNC5(node)) {
            FUNC8(LL_WARNING,
                    "Failover auth denied to %.40s: it is a master node",
                    node->name);
        } else if (master == NULL) {
            FUNC8(LL_WARNING,
                    "Failover auth denied to %.40s: I don't know its master",
                    node->name);
        } else if (!FUNC4(master)) {
            FUNC8(LL_WARNING,
                    "Failover auth denied to %.40s: its master is up",
                    node->name);
        }
        return;
    }

    /* We did not voted for a slave about this master for two
     * times the node timeout. This is not strictly needed for correctness
     * of the algorithm but makes the base case more linear. */
    if (FUNC3() - node->slaveof->voted_time < server.cluster_node_timeout * 2)
    {
        FUNC8(LL_WARNING,
                "Failover auth denied to %.40s: "
                "can't vote about this master before %lld milliseconds",
                node->name,
                (long long) ((server.cluster_node_timeout*2)-
                             (FUNC3() - node->slaveof->voted_time)));
        return;
    }

    /* The slave requesting the vote must have a configEpoch for the claimed
     * slots that is >= the one of the masters currently serving the same
     * slots in the current configuration. */
    for (j = 0; j < CLUSTER_SLOTS; j++) {
        if (FUNC0(claimed_slots, j) == 0) continue;
        if (server.cluster->slots[j] == NULL ||
            server.cluster->slots[j]->configEpoch <= requestConfigEpoch)
        {
            continue;
        }
        /* If we reached this point we found a slot that in our current slots
         * is served by a master with a greater configEpoch than the one claimed
         * by the slave requesting our vote. Refuse to vote for this slave. */
        FUNC8(LL_WARNING,
                "Failover auth denied to %.40s: "
                "slot %d epoch (%llu) > reqEpoch (%llu)",
                node->name, j,
                (unsigned long long) server.cluster->slots[j]->configEpoch,
                (unsigned long long) requestConfigEpoch);
        return;
    }

    /* We can vote for this slave. */
    server.cluster->lastVoteEpoch = server.cluster->currentEpoch;
    node->slaveof->voted_time = FUNC3();
    FUNC1(CLUSTER_TODO_SAVE_CONFIG|CLUSTER_TODO_FSYNC_CONFIG);
    FUNC2(node);
    FUNC8(LL_WARNING, "Failover auth granted to %.40s for epoch %llu",
        node->name, (unsigned long long) server.cluster->currentEpoch);
}