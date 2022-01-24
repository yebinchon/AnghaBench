#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_10__ {scalar_t__ curslabs; scalar_t__ curregs; } ;
struct TYPE_11__ {int /*<<< orphan*/  lock; TYPE_1__ stats; int /*<<< orphan*/  slabs_full; int /*<<< orphan*/  slabs_nonfull; int /*<<< orphan*/ * slabcur; } ;
typedef  TYPE_2__ bin_t ;
struct TYPE_12__ {int /*<<< orphan*/  nactive; TYPE_2__* bins; int /*<<< orphan*/  large_mtx; int /*<<< orphan*/  large; } ;
typedef  TYPE_3__ arena_t ;
struct TYPE_13__ {scalar_t__ szind; int /*<<< orphan*/  slab; } ;
typedef  TYPE_4__ alloc_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 unsigned int NBINS ; 
 scalar_t__ NSIZES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ config_prof ; 
 scalar_t__ config_stats ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extents_rtree ; 
 size_t FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ opt_prof ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void*,size_t,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 size_t FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void
FUNC16(tsd_t *tsd, arena_t *arena) {
	/*
	 * Locking in this function is unintuitive.  The caller guarantees that
	 * no concurrent operations are happening in this arena, but there are
	 * still reasons that some locking is necessary:
	 *
	 * - Some of the functions in the transitive closure of calls assume
	 *   appropriate locks are held, and in some cases these locks are
	 *   temporarily dropped to avoid lock order reversal or deadlock due to
	 *   reentry.
	 * - mallctl("epoch", ...) may concurrently refresh stats.  While
	 *   strictly speaking this is a "concurrent operation", disallowing
	 *   stats refreshes would impose an inconvenient burden.
	 */

	/* Large allocations. */
	FUNC9(FUNC15(tsd), &arena->large_mtx);

	for (extent_t *extent = FUNC6(&arena->large); extent !=
	    NULL; extent = FUNC6(&arena->large)) {
		void *ptr = FUNC4(extent);
		size_t usize;

		FUNC10(FUNC15(tsd), &arena->large_mtx);
		alloc_ctx_t alloc_ctx;
		rtree_ctx_t *rtree_ctx = FUNC14(tsd);
		FUNC12(FUNC15(tsd), &extents_rtree, rtree_ctx,
		    (uintptr_t)ptr, true, &alloc_ctx.szind, &alloc_ctx.slab);
		FUNC2(alloc_ctx.szind != NSIZES);

		if (config_stats || (config_prof && opt_prof)) {
			usize = FUNC13(alloc_ctx.szind);
			FUNC2(usize == FUNC7(FUNC15(tsd), ptr));
		}
		/* Remove large allocation from prof sample set. */
		if (config_prof && opt_prof) {
			FUNC11(tsd, ptr, usize, &alloc_ctx);
		}
		FUNC8(FUNC15(tsd), extent);
		FUNC9(FUNC15(tsd), &arena->large_mtx);
	}
	FUNC10(FUNC15(tsd), &arena->large_mtx);

	/* Bins. */
	for (unsigned i = 0; i < NBINS; i++) {
		extent_t *slab;
		bin_t *bin = &arena->bins[i];
		FUNC9(FUNC15(tsd), &bin->lock);
		if (bin->slabcur != NULL) {
			slab = bin->slabcur;
			bin->slabcur = NULL;
			FUNC10(FUNC15(tsd), &bin->lock);
			FUNC1(FUNC15(tsd), arena, slab);
			FUNC9(FUNC15(tsd), &bin->lock);
		}
		while ((slab = FUNC5(&bin->slabs_nonfull)) !=
		    NULL) {
			FUNC10(FUNC15(tsd), &bin->lock);
			FUNC1(FUNC15(tsd), arena, slab);
			FUNC9(FUNC15(tsd), &bin->lock);
		}
		for (slab = FUNC6(&bin->slabs_full); slab != NULL;
		    slab = FUNC6(&bin->slabs_full)) {
			FUNC0(arena, bin, slab);
			FUNC10(FUNC15(tsd), &bin->lock);
			FUNC1(FUNC15(tsd), arena, slab);
			FUNC9(FUNC15(tsd), &bin->lock);
		}
		if (config_stats) {
			bin->stats.curregs = 0;
			bin->stats.curslabs = 0;
		}
		FUNC10(FUNC15(tsd), &bin->lock);
	}

	FUNC3(&arena->nactive, 0, ATOMIC_RELAXED);
}