#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  base_t ;
struct TYPE_7__ {int /*<<< orphan*/  decay_muzzy; int /*<<< orphan*/  decay_dirty; } ;
struct TYPE_6__ {int /*<<< orphan*/  create_time; int /*<<< orphan*/ * base; int /*<<< orphan*/ * bins; int /*<<< orphan*/  extent_avail_mtx; int /*<<< orphan*/  extent_avail; int /*<<< orphan*/  extent_grow_mtx; int /*<<< orphan*/  retain_grow_limit; int /*<<< orphan*/  extent_grow_next; TYPE_3__ stats; int /*<<< orphan*/  decay_muzzy; int /*<<< orphan*/  decay_dirty; int /*<<< orphan*/  extents_retained; int /*<<< orphan*/  extents_muzzy; int /*<<< orphan*/  extents_dirty; int /*<<< orphan*/  large_mtx; int /*<<< orphan*/  large; int /*<<< orphan*/  nactive; int /*<<< orphan*/  dss_prec; int /*<<< orphan*/  extent_sn_next; int /*<<< orphan*/  offset_state; int /*<<< orphan*/  prof_accum; int /*<<< orphan*/  tcache_ql_mtx; int /*<<< orphan*/  cache_bin_array_descriptor_ql; int /*<<< orphan*/  tcache_ql; int /*<<< orphan*/ * last_thd; int /*<<< orphan*/ * nthreads; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int /*<<< orphan*/  CACHELINE ; 
 int /*<<< orphan*/  EXTENT_GROW_MAX_PIND ; 
 int /*<<< orphan*/  HUGEPAGE ; 
 unsigned int NBINS ; 
 int /*<<< orphan*/  WITNESS_RANK_ARENA_LARGE ; 
 int /*<<< orphan*/  WITNESS_RANK_EXTENT_AVAIL ; 
 int /*<<< orphan*/  WITNESS_RANK_EXTENT_GROW ; 
 int /*<<< orphan*/  WITNESS_RANK_TCACHE_QL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ config_cache_oblivious ; 
 scalar_t__ config_debug ; 
 scalar_t__ config_prof ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extent_state_dirty ; 
 int /*<<< orphan*/  extent_state_muzzy ; 
 int /*<<< orphan*/  extent_state_retained ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  malloc_mutex_rank_exclusive ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

arena_t *
FUNC28(tsdn_t *tsdn, unsigned ind, extent_hooks_t *extent_hooks) {
	arena_t *arena;
	base_t *base;
	unsigned i;

	if (ind == 0) {
		base = FUNC8();
	} else {
		base = FUNC11(tsdn, ind, extent_hooks);
		if (base == NULL) {
			return NULL;
		}
	}

	arena = (arena_t *)FUNC9(tsdn, base, sizeof(arena_t), CACHELINE);
	if (arena == NULL) {
		goto label_error;
	}

	FUNC6(&arena->nthreads[0], 0, ATOMIC_RELAXED);
	FUNC6(&arena->nthreads[1], 0, ATOMIC_RELAXED);
	arena->last_thd = NULL;

	if (config_stats) {
		if (FUNC4(tsdn, &arena->stats)) {
			goto label_error;
		}

		FUNC24(&arena->tcache_ql);
		FUNC24(&arena->cache_bin_array_descriptor_ql);
		if (FUNC18(&arena->tcache_ql_mtx, "tcache_ql",
		    WITNESS_RANK_TCACHE_QL, malloc_mutex_rank_exclusive)) {
			goto label_error;
		}
	}

	if (config_prof) {
		if (FUNC23(tsdn, &arena->prof_accum)) {
			goto label_error;
		}
	}

	if (config_cache_oblivious) {
		/*
		 * A nondeterministic seed based on the address of arena reduces
		 * the likelihood of lockstep non-uniform cache index
		 * utilization among identical concurrent processes, but at the
		 * cost of test repeatability.  For debug builds, instead use a
		 * deterministic seed.
		 */
		FUNC7(&arena->offset_state, config_debug ? ind :
		    (size_t)(uintptr_t)arena, ATOMIC_RELAXED);
	}

	FUNC7(&arena->extent_sn_next, 0, ATOMIC_RELAXED);

	FUNC6(&arena->dss_prec, (unsigned)FUNC14(),
	    ATOMIC_RELAXED);

	FUNC7(&arena->nactive, 0, ATOMIC_RELAXED);

	FUNC15(&arena->large);
	if (FUNC18(&arena->large_mtx, "arena_large",
	    WITNESS_RANK_ARENA_LARGE, malloc_mutex_rank_exclusive)) {
		goto label_error;
	}

	/*
	 * Delay coalescing for dirty extents despite the disruptive effect on
	 * memory layout for best-fit extent allocation, since cached extents
	 * are likely to be reused soon after deallocation, and the cost of
	 * merging/splitting extents is non-trivial.
	 */
	if (FUNC16(tsdn, &arena->extents_dirty, extent_state_dirty,
	    true)) {
		goto label_error;
	}
	/*
	 * Coalesce muzzy extents immediately, because operations on them are in
	 * the critical path much less often than for dirty extents.
	 */
	if (FUNC16(tsdn, &arena->extents_muzzy, extent_state_muzzy,
	    false)) {
		goto label_error;
	}
	/*
	 * Coalesce retained extents immediately, in part because they will
	 * never be evicted (and therefore there's no opportunity for delayed
	 * coalescing), but also because operations on retained extents are not
	 * in the critical path.
	 */
	if (FUNC16(tsdn, &arena->extents_retained, extent_state_retained,
	    false)) {
		goto label_error;
	}

	if (FUNC0(&arena->decay_dirty,
	    FUNC1(), &arena->stats.decay_dirty)) {
		goto label_error;
	}
	if (FUNC0(&arena->decay_muzzy,
	    FUNC2(), &arena->stats.decay_muzzy)) {
		goto label_error;
	}

	arena->extent_grow_next = FUNC25(HUGEPAGE);
	arena->retain_grow_limit = EXTENT_GROW_MAX_PIND;
	if (FUNC18(&arena->extent_grow_mtx, "extent_grow",
	    WITNESS_RANK_EXTENT_GROW, malloc_mutex_rank_exclusive)) {
		goto label_error;
	}

	FUNC13(&arena->extent_avail);
	if (FUNC18(&arena->extent_avail_mtx, "extent_avail",
	    WITNESS_RANK_EXTENT_AVAIL, malloc_mutex_rank_exclusive)) {
		goto label_error;
	}

	/* Initialize bins. */
	for (i = 0; i < NBINS; i++) {
		bool err = FUNC12(&arena->bins[i]);
		if (err) {
			goto label_error;
		}
	}

	arena->base = base;
	/* Set arena before creating background threads. */
	FUNC3(ind, arena);

	FUNC19(&arena->create_time, 0);
	FUNC20(&arena->create_time);

	/* We don't support reentrancy for arena 0 bootstrapping. */
	if (ind != 0) {
		/*
		 * If we're here, then arena 0 already exists, so bootstrapping
		 * is done enough that we should have tsd.
		 */
		FUNC5(!FUNC26(tsdn));
		FUNC22(FUNC27(tsdn), arena);
		if (&hooks_arena_new_hook) {
			FUNC17();
		}
		FUNC21(FUNC27(tsdn));
	}

	return arena;
label_error:
	if (ind != 0) {
		FUNC10(tsdn, base);
	}
	return NULL;
}