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
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_16__ {int /*<<< orphan*/  (* purge_lazy ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* purge_forced ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ extent_hooks_t ;
struct TYPE_17__ {int /*<<< orphan*/  extents_retained; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ config_prof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__ extent_hooks_default ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ extent_state_muzzy ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC20(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *extent) {
	FUNC1(FUNC7(extent));
	FUNC19(FUNC18(tsdn),
	    WITNESS_RANK_CORE, 0);

	/*
	 * Deregister first to avoid a race with other allocating threads, and
	 * reregister if deallocation fails.
	 */
	FUNC6(tsdn, extent);
	if (!FUNC4(tsdn, arena, r_extent_hooks, extent)) {
		return;
	}

	FUNC12(tsdn, extent);
	if (*r_extent_hooks != &extent_hooks_default) {
		FUNC10(tsdn, arena);
	}
	/* Try to decommit; purge if that fails. */
	bool zeroed;
	if (!FUNC3(extent)) {
		zeroed = true;
	} else if (!FUNC5(tsdn, arena, r_extent_hooks, extent,
	    0, FUNC13(extent))) {
		zeroed = true;
	} else if ((*r_extent_hooks)->purge_forced != NULL &&
	    !(*r_extent_hooks)->purge_forced(*r_extent_hooks,
	    FUNC2(extent), FUNC13(extent), 0,
	    FUNC13(extent), FUNC0(arena))) {
		zeroed = true;
	} else if (FUNC14(extent) == extent_state_muzzy ||
	    ((*r_extent_hooks)->purge_lazy != NULL &&
	    !(*r_extent_hooks)->purge_lazy(*r_extent_hooks,
	    FUNC2(extent), FUNC13(extent), 0,
	    FUNC13(extent), FUNC0(arena)))) {
		zeroed = false;
	} else {
		zeroed = false;
	}
	if (*r_extent_hooks != &extent_hooks_default) {
		FUNC9(tsdn);
	}
	FUNC15(extent, zeroed);

	if (config_prof) {
		FUNC8(tsdn, extent);
	}

	FUNC11(tsdn, arena, r_extent_hooks, &arena->extents_retained,
	    extent, false);
}