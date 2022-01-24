#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; scalar_t__ failover_state; int /*<<< orphan*/ * sentinels; int /*<<< orphan*/ * slaves; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
 scalar_t__ SENTINEL_FAILOVER_STATE_UPDATE_CONFIG ; 
 int SRI_MASTER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(dict *instances) {
    dictIterator *di;
    dictEntry *de;
    sentinelRedisInstance *switch_to_promoted = NULL;

    /* There are a number of things we need to perform against every master. */
    di = FUNC0(instances);
    while((de = FUNC2(di)) != NULL) {
        sentinelRedisInstance *ri = FUNC1(de);

        FUNC5(ri);
        if (ri->flags & SRI_MASTER) {
            FUNC6(ri->slaves);
            FUNC6(ri->sentinels);
            if (ri->failover_state == SENTINEL_FAILOVER_STATE_UPDATE_CONFIG) {
                switch_to_promoted = ri;
            }
        }
    }
    if (switch_to_promoted)
        FUNC4(switch_to_promoted);
    FUNC3(di);
}