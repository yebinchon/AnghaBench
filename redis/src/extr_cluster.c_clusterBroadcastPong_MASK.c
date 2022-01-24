#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_9__ {int /*<<< orphan*/  link; struct TYPE_9__* slaveof; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_10__ {TYPE_1__* cluster; } ;
struct TYPE_8__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERMSG_TYPE_PONG ; 
 int CLUSTER_BROADCAST_LOCAL_SLAVES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* myself ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 TYPE_3__ server ; 

void FUNC7(int target) {
    dictIterator *di;
    dictEntry *de;

    di = FUNC1(server.cluster->nodes);
    while((de = FUNC3(di)) != NULL) {
        clusterNode *node = FUNC2(de);

        if (!node->link) continue;
        if (node == myself || FUNC5(node)) continue;
        if (target == CLUSTER_BROADCAST_LOCAL_SLAVES) {
            int local_slave =
                FUNC6(node) && node->slaveof &&
                (node->slaveof == myself || node->slaveof == myself->slaveof);
            if (!local_slave) continue;
        }
        FUNC0(node->link,CLUSTERMSG_TYPE_PONG);
    }
    FUNC4(di);
}