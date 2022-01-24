#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_6__ {scalar_t__ configEpoch; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_7__ {TYPE_1__* cluster; } ;
struct TYPE_5__ {scalar_t__ currentEpoch; int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__ server ; 

uint64_t FUNC4(void) {
    uint64_t max = 0;
    dictIterator *di;
    dictEntry *de;

    di = FUNC0(server.cluster->nodes);
    while((de = FUNC2(di)) != NULL) {
        clusterNode *node = FUNC1(de);
        if (node->configEpoch > max) max = node->configEpoch;
    }
    FUNC3(di);
    if (max < server.cluster->currentEpoch) max = server.cluster->currentEpoch;
    return max;
}