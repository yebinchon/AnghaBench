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
struct TYPE_5__ {int flags; unsigned int quorum; int /*<<< orphan*/  o_down_since_time; int /*<<< orphan*/  sentinels; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int SRI_MASTER_DOWN ; 
 int SRI_O_DOWN ; 
 int SRI_S_DOWN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,TYPE_1__*,char*,...) ; 

void FUNC6(sentinelRedisInstance *master) {
    dictIterator *di;
    dictEntry *de;
    unsigned int quorum = 0, odown = 0;

    if (master->flags & SRI_S_DOWN) {
        /* Is down for enough sentinels? */
        quorum = 1; /* the current sentinel. */
        /* Count all the other sentinels. */
        di = FUNC0(master->sentinels);
        while((de = FUNC2(di)) != NULL) {
            sentinelRedisInstance *ri = FUNC1(de);

            if (ri->flags & SRI_MASTER_DOWN) quorum++;
        }
        FUNC3(di);
        if (quorum >= master->quorum) odown = 1;
    }

    /* Set the flag accordingly to the outcome. */
    if (odown) {
        if ((master->flags & SRI_O_DOWN) == 0) {
            FUNC5(LL_WARNING,"+odown",master,"%@ #quorum %d/%d",
                quorum, master->quorum);
            master->flags |= SRI_O_DOWN;
            master->o_down_since_time = FUNC4();
        }
    } else {
        if (master->flags & SRI_O_DOWN) {
            FUNC5(LL_WARNING,"-odown",master,"%@");
            master->flags &= ~SRI_O_DOWN;
        }
    }
}