#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ configEpoch; } ;
struct TYPE_5__ {TYPE_1__* cluster; } ;
struct TYPE_4__ {scalar_t__ currentEpoch; } ;

/* Variables and functions */
 int CLUSTER_TODO_FSYNC_CONFIG ; 
 int CLUSTER_TODO_SAVE_CONFIG ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_3__* myself ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long) ; 

int FUNC3(void) {
    uint64_t maxEpoch = FUNC1();

    if (myself->configEpoch == 0 ||
        myself->configEpoch != maxEpoch)
    {
        server.cluster->currentEpoch++;
        myself->configEpoch = server.cluster->currentEpoch;
        FUNC0(CLUSTER_TODO_SAVE_CONFIG|
                             CLUSTER_TODO_FSYNC_CONFIG);
        FUNC2(LL_WARNING,
            "New configEpoch set to %llu",
            (unsigned long long) myself->configEpoch);
        return C_OK;
    } else {
        return C_ERR;
    }
}