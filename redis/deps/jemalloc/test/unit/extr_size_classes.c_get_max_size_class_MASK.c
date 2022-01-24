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
typedef  int /*<<< orphan*/  mib ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t*,size_t*) ; 

__attribute__((used)) static size_t
FUNC4(void) {
	unsigned nlextents;
	size_t mib[4];
	size_t sz, miblen, max_size_class;

	sz = sizeof(unsigned);
	FUNC0(FUNC1("arenas.nlextents", (void *)&nlextents, &sz, NULL,
	    0), 0, "Unexpected mallctl() error");

	miblen = sizeof(mib) / sizeof(size_t);
	FUNC0(FUNC3("arenas.lextent.0.size", mib, &miblen), 0,
	    "Unexpected mallctlnametomib() error");
	mib[2] = nlextents - 1;

	sz = sizeof(size_t);
	FUNC0(FUNC2(mib, miblen, (void *)&max_size_class, &sz,
	    NULL, 0), 0, "Unexpected mallctlbymib() error");

	return max_size_class;
}