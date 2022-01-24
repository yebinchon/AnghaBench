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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_split_interior_result_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 uintptr_t FUNC0 (uintptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NSIZES ; 
 size_t PAGE ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  extent_split_interior_cant_alloc ; 
 int /*<<< orphan*/  extent_split_interior_error ; 
 int /*<<< orphan*/  extent_split_interior_ok ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  extents_rtree ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static extent_split_interior_result_t
FUNC10(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, rtree_ctx_t *rtree_ctx,
    /* The result of splitting, in case of success. */
    extent_t **extent, extent_t **lead, extent_t **trail,
    /* The mess to clean up, in case of error. */
    extent_t **to_leak, extent_t **to_salvage,
    void *new_addr, size_t size, size_t pad, size_t alignment, bool slab,
    szind_t szind, bool growing_retained) {
	size_t esize = size + pad;
	size_t leadsize = FUNC0((uintptr_t)FUNC4(*extent),
	    FUNC1(alignment)) - (uintptr_t)FUNC4(*extent);
	FUNC2(new_addr == NULL || leadsize == 0);
	if (FUNC6(*extent) < leadsize + esize) {
		return extent_split_interior_cant_alloc;
	}
	size_t trailsize = FUNC6(*extent) - leadsize - esize;

	*lead = NULL;
	*trail = NULL;
	*to_leak = NULL;
	*to_salvage = NULL;

	/* Split the lead. */
	if (leadsize != 0) {
		*lead = *extent;
		*extent = FUNC7(tsdn, arena, r_extent_hooks,
		    *lead, leadsize, NSIZES, false, esize + trailsize, szind,
		    slab, growing_retained);
		if (*extent == NULL) {
			*to_leak = *lead;
			*lead = NULL;
			return extent_split_interior_error;
		}
	}

	/* Split the trail. */
	if (trailsize != 0) {
		*trail = FUNC7(tsdn, arena, r_extent_hooks, *extent,
		    esize, szind, slab, trailsize, NSIZES, false,
		    growing_retained);
		if (*trail == NULL) {
			*to_leak = *extent;
			*to_salvage = *lead;
			*lead = NULL;
			*extent = NULL;
			return extent_split_interior_error;
		}
	}

	if (leadsize == 0 && trailsize == 0) {
		/*
		 * Splitting causes szind to be set as a side effect, but no
		 * splitting occurred.
		 */
		FUNC8(*extent, szind);
		if (szind != NSIZES) {
			FUNC9(tsdn, &extents_rtree, rtree_ctx,
			    (uintptr_t)FUNC3(*extent), szind, slab);
			if (slab && FUNC6(*extent) > PAGE) {
				FUNC9(tsdn, &extents_rtree,
				    rtree_ctx,
				    (uintptr_t)FUNC5(*extent) -
				    (uintptr_t)PAGE, szind, slab);
			}
		}
	}

	return extent_split_interior_ok;
}