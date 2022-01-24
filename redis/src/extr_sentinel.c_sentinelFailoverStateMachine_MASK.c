#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; int failover_state; } ;
typedef  TYPE_1__ sentinelRedisInstance ;

/* Variables and functions */
#define  SENTINEL_FAILOVER_STATE_RECONF_SLAVES 132 
#define  SENTINEL_FAILOVER_STATE_SELECT_SLAVE 131 
#define  SENTINEL_FAILOVER_STATE_SEND_SLAVEOF_NOONE 130 
#define  SENTINEL_FAILOVER_STATE_WAIT_PROMOTION 129 
#define  SENTINEL_FAILOVER_STATE_WAIT_START 128 
 int SRI_FAILOVER_IN_PROGRESS ; 
 int SRI_MASTER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(sentinelRedisInstance *ri) {
    FUNC5(ri->flags & SRI_MASTER);

    if (!(ri->flags & SRI_FAILOVER_IN_PROGRESS)) return;

    switch(ri->failover_state) {
        case SENTINEL_FAILOVER_STATE_WAIT_START:
            FUNC4(ri);
            break;
        case SENTINEL_FAILOVER_STATE_SELECT_SLAVE:
            FUNC1(ri);
            break;
        case SENTINEL_FAILOVER_STATE_SEND_SLAVEOF_NOONE:
            FUNC2(ri);
            break;
        case SENTINEL_FAILOVER_STATE_WAIT_PROMOTION:
            FUNC3(ri);
            break;
        case SENTINEL_FAILOVER_STATE_RECONF_SLAVES:
            FUNC0(ri);
            break;
    }
}