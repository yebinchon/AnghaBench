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
typedef  int /*<<< orphan*/  rtree_ctx_t ;
struct TYPE_6__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  delay_coalesce; } ;
typedef  TYPE_1__ extents_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t LARGE_MINCLASS ; 
 int /*<<< orphan*/  NSIZES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ extent_state_active ; 
 scalar_t__ extent_state_dirty ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ extent_state_muzzy ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extents_rtree ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    extents_t *extents, extent_t *extent, bool growing_retained) {
	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC16(tsdn, &rtree_ctx_fallback);

	FUNC0((FUNC12(extents) != extent_state_dirty &&
	    FUNC12(extents) != extent_state_muzzy) ||
	    !FUNC11(extent));

	FUNC13(tsdn, &extents->mtx);
	FUNC3(arena, r_extent_hooks);

	FUNC9(extent, NSIZES);
	if (FUNC6(extent)) {
		FUNC4(tsdn, rtree_ctx, extent);
		FUNC7(extent, false);
	}

	FUNC0(FUNC15(tsdn, &extents_rtree, rtree_ctx,
	    (uintptr_t)FUNC1(extent), true) == extent);

	if (!extents->delay_coalesce) {
		extent = FUNC10(tsdn, arena, r_extent_hooks,
		    rtree_ctx, extents, extent, NULL, growing_retained);
	} else if (FUNC5(extent) >= LARGE_MINCLASS) {
		/* Always coalesce large extents eagerly. */
		bool coalesced;
		size_t prev_size;
		do {
			prev_size = FUNC5(extent);
			FUNC0(FUNC8(extent) == extent_state_active);
			extent = FUNC10(tsdn, arena,
			    r_extent_hooks, rtree_ctx, extents, extent,
			    &coalesced, growing_retained);
		} while (coalesced &&
		    FUNC5(extent) >= prev_size + LARGE_MINCLASS);
	}
	FUNC2(tsdn, arena, extents, extent);

	FUNC14(tsdn, &extents->mtx);
}