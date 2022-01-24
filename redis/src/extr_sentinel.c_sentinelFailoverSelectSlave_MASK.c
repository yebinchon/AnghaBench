#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  failover_state_change_time; int /*<<< orphan*/  failover_state; struct TYPE_7__* promoted_slave; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ sentinelRedisInstance ;

/* Variables and functions */
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  SENTINEL_FAILOVER_STATE_SEND_SLAVEOF_NOONE ; 
 int /*<<< orphan*/  SRI_PROMOTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_1__*,char*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 

void FUNC4(sentinelRedisInstance *ri) {
    sentinelRedisInstance *slave = FUNC3(ri);

    /* We don't handle the timeout in this state as the function aborts
     * the failover or go forward in the next state. */
    if (slave == NULL) {
        FUNC2(LL_WARNING,"-failover-abort-no-good-slave",ri,"%@");
        FUNC1(ri);
    } else {
        FUNC2(LL_WARNING,"+selected-slave",slave,"%@");
        slave->flags |= SRI_PROMOTED;
        ri->promoted_slave = slave;
        ri->failover_state = SENTINEL_FAILOVER_STATE_SEND_SLAVEOF_NOONE;
        ri->failover_state_change_time = FUNC0();
        FUNC2(LL_NOTICE,"+failover-state-send-slaveof-noone",
            slave, "%@");
    }
}