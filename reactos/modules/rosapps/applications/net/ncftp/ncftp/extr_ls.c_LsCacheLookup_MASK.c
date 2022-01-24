#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ expiration; int /*<<< orphan*/  hits; int /*<<< orphan*/ * itempath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* gLsCache ; 
 int gOldestLsCacheItem ; 
 int kLsCacheSize ; 
 scalar_t__ FUNC1 (char const* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 

int
FUNC3(const char *const itempath)
{
	int i, j;
	time_t now;

	(void) FUNC2(&now);
	for (i=0, j=gOldestLsCacheItem; i<kLsCacheSize; i++) {
		if (--j < 0)
			j = kLsCacheSize - 1;
		if ((gLsCache[j].expiration != (time_t) 0) && (gLsCache[j].itempath != NULL)) {
			if (FUNC1(itempath, gLsCache[j].itempath) == 0) {
				if (now > gLsCache[j].expiration) {
					/* Found it, but it was expired. */
					FUNC0(j);
					return (-1);
				}
				gLsCache[j].hits++;
				return (j);
			}
		}
	}
	return (-1);
}