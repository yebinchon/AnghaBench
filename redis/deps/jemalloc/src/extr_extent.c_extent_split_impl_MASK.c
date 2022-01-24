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
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  rtree_leaf_elm_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_6__ {int (* split ) (TYPE_1__*,scalar_t__,size_t,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 TYPE_1__ extent_hooks_default ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (TYPE_1__*,scalar_t__,size_t,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static extent_t *
FUNC26(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *extent, size_t size_a,
    szind_t szind_a, bool slab_a, size_t size_b, szind_t szind_b, bool slab_b,
    bool growing_retained) {
	FUNC1(FUNC15(extent) == size_a + size_b);
	FUNC25(FUNC24(tsdn),
	    WITNESS_RANK_CORE, growing_retained ? 1 : 0);

	FUNC10(arena, r_extent_hooks);

	if ((*r_extent_hooks)->split == NULL) {
		return NULL;
	}

	extent_t *trail = FUNC3(tsdn, arena);
	if (trail == NULL) {
		goto label_error_a;
	}

	FUNC11(trail, arena, (void *)((uintptr_t)FUNC4(extent) +
	    size_a), size_b, slab_b, szind_b, FUNC17(extent),
	    FUNC18(extent), FUNC21(extent),
	    FUNC5(extent), FUNC7(extent));

	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC23(tsdn, &rtree_ctx_fallback);
	rtree_leaf_elm_t *lead_elm_a, *lead_elm_b;
	{
		extent_t lead;

		FUNC11(&lead, arena, FUNC2(extent), size_a,
		    slab_a, szind_a, FUNC17(extent),
		    FUNC18(extent), FUNC21(extent),
		    FUNC5(extent), FUNC7(extent));

		FUNC13(tsdn, rtree_ctx, &lead, false,
		    true, &lead_elm_a, &lead_elm_b);
	}
	rtree_leaf_elm_t *trail_elm_a, *trail_elm_b;
	FUNC13(tsdn, rtree_ctx, trail, false, true,
	    &trail_elm_a, &trail_elm_b);

	if (lead_elm_a == NULL || lead_elm_b == NULL || trail_elm_a == NULL
	    || trail_elm_b == NULL) {
		goto label_error_b;
	}

	FUNC12(tsdn, extent, trail);

	if (*r_extent_hooks != &extent_hooks_default) {
		FUNC9(tsdn, arena);
	}
	bool err = (*r_extent_hooks)->split(*r_extent_hooks, FUNC4(extent),
	    size_a + size_b, size_a, size_b, FUNC5(extent),
	    FUNC0(arena));
	if (*r_extent_hooks != &extent_hooks_default) {
		FUNC8(tsdn);
	}
	if (err) {
		goto label_error_c;
	}

	FUNC16(extent, size_a);
	FUNC19(extent, szind_a);

	FUNC14(tsdn, lead_elm_a, lead_elm_b, extent,
	    szind_a, slab_a);
	FUNC14(tsdn, trail_elm_a, trail_elm_b, trail,
	    szind_b, slab_b);

	FUNC20(tsdn, extent, trail);

	return trail;
label_error_c:
	FUNC20(tsdn, extent, trail);
label_error_b:
	FUNC6(tsdn, arena, trail);
label_error_a:
	return NULL;
}