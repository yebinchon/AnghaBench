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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t*,size_t*) ; 

__attribute__((used)) static size_t
FUNC3(const char *cmd, unsigned arena_ind) {
	size_t mib[4];
	size_t miblen = sizeof(mib) / sizeof(size_t);
	size_t z = sizeof(size_t);

	FUNC0(FUNC2(cmd, mib, &miblen),
	    0, "Unexpected mallctlnametomib(\"%s\", ...) failure", cmd);
	mib[2] = arena_ind;
	size_t size;
	FUNC0(FUNC1(mib, miblen, (void *)&size, &z, NULL, 0),
	    0, "Unexpected mallctlbymib([\"%s\"], ...) failure", cmd);

	return size;
}