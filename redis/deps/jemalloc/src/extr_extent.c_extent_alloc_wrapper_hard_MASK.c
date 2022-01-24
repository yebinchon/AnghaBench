#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_16__ {void* (* alloc ) (TYPE_1__*,void*,size_t,size_t,int*,int*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ extent_hooks_t ;
struct TYPE_17__ {int /*<<< orphan*/  extents_retained; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,void*,size_t,size_t,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__ extent_hooks_default ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,void*,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extent_state_active ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC11 (TYPE_1__*,void*,size_t,size_t,int*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static extent_t *
FUNC12(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, void *new_addr, size_t size, size_t pad,
    size_t alignment, bool slab, szind_t szind, bool *zero, bool *commit) {
	size_t esize = size + pad;
	extent_t *extent = FUNC3(tsdn, arena);
	if (extent == NULL) {
		return NULL;
	}
	void *addr;
	if (*r_extent_hooks == &extent_hooks_default) {
		/* Call directly to propagate tsdn. */
		addr = FUNC4(tsdn, arena, new_addr, esize,
		    alignment, zero, commit);
	} else {
		FUNC7(tsdn, arena);
		addr = (*r_extent_hooks)->alloc(*r_extent_hooks, new_addr,
		    esize, alignment, zero, commit, FUNC1(arena));
		FUNC6(tsdn);
	}
	if (addr == NULL) {
		FUNC5(tsdn, arena, extent);
		return NULL;
	}
	FUNC8(extent, arena, addr, esize, slab, szind,
	    FUNC0(arena), extent_state_active, *zero, *commit,
	    true);
	if (pad != 0) {
		FUNC2(tsdn, extent, alignment);
	}
	if (FUNC9(tsdn, extent)) {
		FUNC10(tsdn, arena, r_extent_hooks,
		    &arena->extents_retained, extent, false);
		return NULL;
	}

	return extent;
}