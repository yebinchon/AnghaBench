#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; void* failover_state_change_time; void* failover_start_time; scalar_t__ failover_epoch; int /*<<< orphan*/  failover_state; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
struct TYPE_6__ {scalar_t__ current_epoch; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  SENTINEL_FAILOVER_STATE_WAIT_START ; 
 int SENTINEL_MAX_DESYNC ; 
 int SRI_FAILOVER_IN_PROGRESS ; 
 int SRI_MASTER ; 
 void* FUNC0 () ; 
 int FUNC1 () ; 
 TYPE_4__ sentinel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(sentinelRedisInstance *master) {
    FUNC3(master->flags & SRI_MASTER);

    master->failover_state = SENTINEL_FAILOVER_STATE_WAIT_START;
    master->flags |= SRI_FAILOVER_IN_PROGRESS;
    master->failover_epoch = ++sentinel.current_epoch;
    FUNC2(LL_WARNING,"+new-epoch",master,"%llu",
        (unsigned long long) sentinel.current_epoch);
    FUNC2(LL_WARNING,"+try-failover",master,"%@");
    master->failover_start_time = FUNC0()+FUNC1()%SENTINEL_MAX_DESYNC;
    master->failover_state_change_time = FUNC0();
}