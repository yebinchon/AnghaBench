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
typedef  int /*<<< orphan*/  hooks_mib ;
typedef  int /*<<< orphan*/  extent_hooks_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  hooks ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,size_t,void*,size_t*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t*,size_t*) ; 

__attribute__((used)) static void
FUNC6(void) {
	unsigned narenas;
	size_t old_size, new_size, sz;
	size_t hooks_mib[3];
	size_t hooks_miblen;
	extent_hooks_t *new_hooks, *old_hooks;

	FUNC2();

	sz = sizeof(unsigned);
	/* Get number of auto arenas. */
	FUNC1(FUNC3("opt.narenas", (void *)&narenas, &sz, NULL, 0),
	    0, "Unexpected mallctl() failure");
	if (narenas == 1) {
		return;
	}

	/* Install custom extent hooks on arena 1 (might not be initialized). */
	hooks_miblen = sizeof(hooks_mib)/sizeof(size_t);
	FUNC1(FUNC5("arena.0.extent_hooks", hooks_mib,
	    &hooks_miblen), 0, "Unexpected mallctlnametomib() failure");
	hooks_mib[1] = 1;
	old_size = sizeof(extent_hooks_t *);
	new_hooks = &hooks;
	new_size = sizeof(extent_hooks_t *);
	FUNC1(FUNC4(hooks_mib, hooks_miblen, (void *)&old_hooks,
	    &old_size, (void *)&new_hooks, new_size), 0,
	    "Unexpected extent_hooks error");
	static bool auto_arena_created = false;
	if (old_hooks != &hooks) {
		FUNC0(auto_arena_created, false,
		    "Expected auto arena 1 created only once.");
		auto_arena_created = true;
	}
}