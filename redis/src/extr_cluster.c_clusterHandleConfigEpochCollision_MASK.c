#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ configEpoch; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_9__ {TYPE_1__* cluster; } ;
struct TYPE_7__ {scalar_t__ currentEpoch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_NAMELEN ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* myself ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 

void FUNC4(clusterNode *sender) {
    /* Prerequisites: nodes have the same configEpoch and are both masters. */
    if (sender->configEpoch != myself->configEpoch ||
        !FUNC2(sender) || !FUNC2(myself)) return;
    /* Don't act if the colliding node has a smaller Node ID. */
    if (FUNC1(sender->name,myself->name,CLUSTER_NAMELEN) <= 0) return;
    /* Get the next ID available at the best of this node knowledge. */
    server.cluster->currentEpoch++;
    myself->configEpoch = server.cluster->currentEpoch;
    FUNC0(1);
    FUNC3(LL_VERBOSE,
        "WARNING: configEpoch collision with node %.40s."
        " configEpoch set to %llu",
        sender->name,
        (unsigned long long) myself->configEpoch);
}