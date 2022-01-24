#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_3__ {int /*<<< orphan*/  prof_accum; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 size_t LARGE_MINCLASS ; 
 size_t SMALL_MAXCLASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  extents_rtree ; 
 size_t FUNC4 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC10(tsdn_t *tsdn, const void *ptr, size_t usize) {
	FUNC1(config_prof);
	FUNC0(ptr != NULL);
	FUNC0(FUNC4(tsdn, ptr) == LARGE_MINCLASS);
	FUNC0(usize <= SMALL_MAXCLASS);

	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC9(tsdn, &rtree_ctx_fallback);

	extent_t *extent = FUNC6(tsdn, &extents_rtree, rtree_ctx,
	    (uintptr_t)ptr, true);
	arena_t *arena = FUNC2(extent);

	szind_t szind = FUNC8(usize);
	FUNC3(extent, szind);
	FUNC7(tsdn, &extents_rtree, rtree_ctx, (uintptr_t)ptr,
	    szind, false);

	FUNC5(tsdn, &arena->prof_accum, usize);

	FUNC0(FUNC4(tsdn, ptr) == usize);
}