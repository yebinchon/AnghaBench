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
typedef  int /*<<< orphan*/  size ;
typedef  int /*<<< orphan*/  nbins ;
typedef  int /*<<< orphan*/  mib ;

/* Variables and functions */
 size_t SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static unsigned
FUNC5(void) {
	size_t sz;
	unsigned nbins, i;

	sz = sizeof(nbins);
	FUNC0(FUNC1("arenas.nbins", (void *)&nbins, &sz, NULL, 0), 0,
	    "Unexpected mallctl failure");

	for (i = 0; i < nbins; i++) {
		size_t mib[4];
		size_t miblen = sizeof(mib)/sizeof(size_t);
		size_t size;

		FUNC0(FUNC3("arenas.bin.0.size", mib,
		    &miblen), 0, "Unexpected mallctlnametomb failure");
		mib[2] = (size_t)i;

		sz = sizeof(size);
		FUNC0(FUNC2(mib, miblen, (void *)&size, &sz, NULL,
		    0), 0, "Unexpected mallctlbymib failure");
		if (size == SZ) {
			return i;
		}
	}

	FUNC4("Unable to compute nregs_per_run");
	return 0;
}