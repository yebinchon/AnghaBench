#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pdirty ;
typedef  int /*<<< orphan*/  mib ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t*,size_t*) ; 

__attribute__((used)) static size_t
FUNC4(unsigned arena_ind) {
	FUNC1();
	size_t mib[4];
	size_t miblen = sizeof(mib)/sizeof(size_t);
	FUNC0(FUNC3("stats.arenas.0.pdirty", mib, &miblen), 0,
	    "Unexpected mallctlnametomib() failure");
	mib[2] = (size_t)arena_ind;
	size_t pdirty;
	size_t sz = sizeof(pdirty);
	FUNC0(FUNC2(mib, miblen, (void *)&pdirty, &sz, NULL, 0), 0,
	    "Unexpected mallctlbymib() failure");
	return pdirty;
}