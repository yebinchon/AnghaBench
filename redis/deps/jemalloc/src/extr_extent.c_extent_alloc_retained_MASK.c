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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_5__ {int /*<<< orphan*/  extent_grow_mtx; int /*<<< orphan*/  extents_retained; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ config_prof ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,size_t,size_t,size_t,int,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,void*,size_t,size_t,size_t,int,int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ opt_retain ; 

__attribute__((used)) static extent_t *
FUNC7(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, void *new_addr, size_t size, size_t pad,
    size_t alignment, bool slab, szind_t szind, bool *zero, bool *commit) {
	FUNC0(size != 0);
	FUNC0(alignment != 0);

	FUNC5(tsdn, &arena->extent_grow_mtx);

	extent_t *extent = FUNC3(tsdn, arena, r_extent_hooks,
	    &arena->extents_retained, new_addr, size, pad, alignment, slab,
	    szind, zero, commit, true);
	if (extent != NULL) {
		FUNC6(tsdn, &arena->extent_grow_mtx);
		if (config_prof) {
			FUNC1(tsdn, extent);
		}
	} else if (opt_retain && new_addr == NULL) {
		extent = FUNC2(tsdn, arena, r_extent_hooks, size,
		    pad, alignment, slab, szind, zero, commit);
		/* extent_grow_retained() always releases extent_grow_mtx. */
	} else {
		FUNC6(tsdn, &arena->extent_grow_mtx);
	}
	FUNC4(tsdn, &arena->extent_grow_mtx);

	return extent;
}