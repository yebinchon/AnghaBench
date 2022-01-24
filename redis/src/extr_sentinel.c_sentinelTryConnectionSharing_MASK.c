#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; TYPE_4__* link; int /*<<< orphan*/ * runid; int /*<<< orphan*/  sentinels; struct TYPE_7__* master; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_9__ {int refcount; } ;
struct TYPE_8__ {int /*<<< orphan*/  masters; } ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int SRI_SENTINEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_3__ sentinel ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(sentinelRedisInstance *ri) {
    FUNC6(ri->flags & SRI_SENTINEL);
    dictIterator *di;
    dictEntry *de;

    if (ri->runid == NULL) return C_ERR; /* No way to identify it. */
    if (ri->link->refcount > 1) return C_ERR; /* Already shared. */

    di = FUNC0(sentinel.masters);
    while((de = FUNC2(di)) != NULL) {
        sentinelRedisInstance *master = FUNC1(de), *match;
        /* We want to share with the same physical Sentinel referenced
         * in other masters, so skip our master. */
        if (master == ri->master) continue;
        match = FUNC4(master->sentinels,
                                                       NULL,0,ri->runid);
        if (match == NULL) continue; /* No match. */
        if (match == ri) continue; /* Should never happen but... safer. */

        /* We identified a matching Sentinel, great! Let's free our link
         * and use the one of the matching Sentinel. */
        FUNC5(ri->link,NULL);
        ri->link = match->link;
        match->link->refcount++;
        return C_OK;
    }
    FUNC3(di);
    return C_ERR;
}