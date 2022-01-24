#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; scalar_t__ s_down_since_time; int down_after_period; scalar_t__ slave_priority; scalar_t__ info_refresh; scalar_t__ master_link_down_time; TYPE_1__* link; int /*<<< orphan*/  slaves; } ;
typedef  TYPE_2__ sentinelRedisInstance ;
typedef  scalar_t__ mstime_t ;
typedef  int /*<<< orphan*/  instance ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_9__ {int last_avail_time; scalar_t__ disconnected; } ;

/* Variables and functions */
 int SENTINEL_INFO_PERIOD ; 
 int SENTINEL_PING_PERIOD ; 
 int SRI_O_DOWN ; 
 int SRI_S_DOWN ; 
 int /*<<< orphan*/  compareSlavesForPromotion ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**) ; 
 TYPE_2__** FUNC8 (int) ; 

sentinelRedisInstance *FUNC9(sentinelRedisInstance *master) {
    sentinelRedisInstance **instance =
        FUNC8(sizeof(instance[0])*FUNC4(master->slaves));
    sentinelRedisInstance *selected = NULL;
    int instances = 0;
    dictIterator *di;
    dictEntry *de;
    mstime_t max_master_down_time = 0;

    if (master->flags & SRI_S_DOWN)
        max_master_down_time += FUNC5() - master->s_down_since_time;
    max_master_down_time += master->down_after_period * 10;

    di = FUNC0(master->slaves);
    while((de = FUNC2(di)) != NULL) {
        sentinelRedisInstance *slave = FUNC1(de);
        mstime_t info_validity_time;

        if (slave->flags & (SRI_S_DOWN|SRI_O_DOWN)) continue;
        if (slave->link->disconnected) continue;
        if (FUNC5() - slave->link->last_avail_time > SENTINEL_PING_PERIOD*5) continue;
        if (slave->slave_priority == 0) continue;

        /* If the master is in SDOWN state we get INFO for slaves every second.
         * Otherwise we get it with the usual period so we need to account for
         * a larger delay. */
        if (master->flags & SRI_S_DOWN)
            info_validity_time = SENTINEL_PING_PERIOD*5;
        else
            info_validity_time = SENTINEL_INFO_PERIOD*3;
        if (FUNC5() - slave->info_refresh > info_validity_time) continue;
        if (slave->master_link_down_time > max_master_down_time) continue;
        instance[instances++] = slave;
    }
    FUNC3(di);
    if (instances) {
        FUNC6(instance,instances,sizeof(sentinelRedisInstance*),
            compareSlavesForPromotion);
        selected = instance[0];
    }
    FUNC7(instance);
    return selected;
}