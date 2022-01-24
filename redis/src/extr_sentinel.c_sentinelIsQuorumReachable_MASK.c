#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; scalar_t__ quorum; int /*<<< orphan*/  sentinels; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 int SENTINEL_ISQR_NOAUTH ; 
 int SENTINEL_ISQR_NOQUORUM ; 
 int SENTINEL_ISQR_OK ; 
 int SRI_O_DOWN ; 
 int SRI_S_DOWN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(sentinelRedisInstance *master, int *usableptr) {
    dictIterator *di;
    dictEntry *de;
    int usable = 1; /* Number of usable Sentinels. Init to 1 to count myself. */
    int result = SENTINEL_ISQR_OK;
    int voters = FUNC4(master->sentinels)+1; /* Known Sentinels + myself. */

    di = FUNC0(master->sentinels);
    while((de = FUNC2(di)) != NULL) {
        sentinelRedisInstance *ri = FUNC1(de);

        if (ri->flags & (SRI_S_DOWN|SRI_O_DOWN)) continue;
        usable++;
    }
    FUNC3(di);

    if (usable < (int)master->quorum) result |= SENTINEL_ISQR_NOQUORUM;
    if (usable < voters/2+1) result |= SENTINEL_ISQR_NOAUTH;
    if (usableptr) *usableptr = usable;
    return result;
}