#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_7__ {scalar_t__ numslaves; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_8__ {TYPE_1__* cluster; } ;
struct TYPE_6__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 TYPE_3__ server ; 

int FUNC5(void) {
    dictIterator *di = FUNC0(server.cluster->nodes);
    dictEntry *de;
    int slaves = 0;
    while((de = FUNC2(di)) != NULL) {
        clusterNode *node = FUNC1(de);

        if (FUNC4(node)) continue;
        slaves += node->numslaves;
    }
    FUNC3(di);
    return slaves != 0;
}