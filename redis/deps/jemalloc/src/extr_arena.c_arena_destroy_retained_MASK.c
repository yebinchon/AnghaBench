#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_6__ {int /*<<< orphan*/  extents_retained; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(tsdn_t *tsdn, arena_t *arena) {
	/*
	 * Iterate over the retained extents and destroy them.  This gives the
	 * extent allocator underlying the extent hooks an opportunity to unmap
	 * all retained memory without having to keep its own metadata
	 * structures.  In practice, virtual memory for dss-allocated extents is
	 * leaked here, so best practice is to avoid dss for arenas to be
	 * destroyed, or provide custom extent hooks that track retained
	 * dss-based extents for later reuse.
	 */
	extent_hooks_t *extent_hooks = FUNC1(arena);
	extent_t *extent;
	while ((extent = FUNC2(tsdn, arena, &extent_hooks,
	    &arena->extents_retained, 0)) != NULL) {
		FUNC0(tsdn, arena, &extent_hooks, extent);
	}
}