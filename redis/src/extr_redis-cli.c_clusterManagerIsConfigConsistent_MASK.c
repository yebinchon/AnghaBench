#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * sds ;
struct TYPE_4__ {int /*<<< orphan*/ * value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  clusterManagerNode ;
struct TYPE_5__ {int /*<<< orphan*/ * nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__ cluster_manager ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void) {
    if (cluster_manager.nodes == NULL) return 0;
    int consistent = (FUNC1(cluster_manager.nodes) <= 1);
    // If the Cluster has only one node, it's always consistent
    if (consistent) return 1;
    sds first_cfg = NULL;
    listIter li;
    listNode *ln;
    FUNC3(cluster_manager.nodes, &li);
    while ((ln = FUNC2(&li)) != NULL) {
        clusterManagerNode *node = ln->value;
        sds cfg = FUNC0(node);
        if (cfg == NULL) {
            consistent = 0;
            break;
        }
        if (first_cfg == NULL) first_cfg = cfg;
        else {
            consistent = !FUNC4(first_cfg, cfg);
            FUNC5(cfg);
            if (!consistent) break;
        }
    }
    if (first_cfg != NULL) FUNC5(first_cfg);
    return consistent;
}