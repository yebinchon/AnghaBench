#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ numslots; int flags; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; struct TYPE_9__* slaveof; } ;
typedef  TYPE_1__ clusterNode ;

/* Variables and functions */
 int CLUSTER_NODE_MASTER ; 
 int CLUSTER_NODE_MIGRATE_TO ; 
 int CLUSTER_NODE_SLAVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* myself ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(clusterNode *n) {
    FUNC6(n != myself);
    FUNC6(myself->numslots == 0);

    if (FUNC3(myself)) {
        myself->flags &= ~(CLUSTER_NODE_MASTER|CLUSTER_NODE_MIGRATE_TO);
        myself->flags |= CLUSTER_NODE_SLAVE;
        FUNC0();
    } else {
        if (myself->slaveof)
            FUNC2(myself->slaveof,myself);
    }
    myself->slaveof = n;
    FUNC1(n,myself);
    FUNC4(n->ip, n->port);
    FUNC5();
}