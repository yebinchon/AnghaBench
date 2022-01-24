#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; int /*<<< orphan*/  addr; TYPE_5__* link; int /*<<< orphan*/  runid; int /*<<< orphan*/  sentinels; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_10__ {int /*<<< orphan*/ * pc; int /*<<< orphan*/ * cc; } ;
struct TYPE_9__ {int /*<<< orphan*/  masters; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_NOTICE ; 
 int SRI_SENTINEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__ sentinel ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(sentinelRedisInstance *ri) {
    FUNC9(ri->flags & SRI_SENTINEL);
    dictIterator *di;
    dictEntry *de;
    int reconfigured = 0;

    di = FUNC0(sentinel.masters);
    while((de = FUNC2(di)) != NULL) {
        sentinelRedisInstance *master = FUNC1(de), *match;
        match = FUNC5(master->sentinels,
                                                       NULL,0,ri->runid);
        /* If there is no match, this master does not know about this
         * Sentinel, try with the next one. */
        if (match == NULL) continue;

        /* Disconnect the old links if connected. */
        if (match->link->cc != NULL)
            FUNC6(match->link,match->link->cc);
        if (match->link->pc != NULL)
            FUNC6(match->link,match->link->pc);

        if (match == ri) continue; /* Address already updated for it. */

        /* Update the address of the matching Sentinel by copying the address
         * of the Sentinel object that received the address update. */
        FUNC7(match->addr);
        match->addr = FUNC4(ri->addr);
        reconfigured++;
    }
    FUNC3(di);
    if (reconfigured)
        FUNC8(LL_NOTICE,"+sentinel-address-update", ri,
                    "%@ %d additional matching instances", reconfigured);
    return reconfigured;
}