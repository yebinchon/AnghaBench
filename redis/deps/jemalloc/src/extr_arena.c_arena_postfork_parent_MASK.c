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
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_6__ {int /*<<< orphan*/  mtx; } ;
struct TYPE_5__ {int /*<<< orphan*/  mtx; } ;
struct TYPE_7__ {int /*<<< orphan*/  tcache_ql_mtx; TYPE_2__ decay_muzzy; TYPE_1__ decay_dirty; int /*<<< orphan*/  extent_grow_mtx; int /*<<< orphan*/  extents_retained; int /*<<< orphan*/  extents_muzzy; int /*<<< orphan*/  extents_dirty; int /*<<< orphan*/  extent_avail_mtx; int /*<<< orphan*/  base; int /*<<< orphan*/  large_mtx; int /*<<< orphan*/ * bins; } ;
typedef  TYPE_3__ arena_t ;

/* Variables and functions */
 unsigned int NBINS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(tsdn_t *tsdn, arena_t *arena) {
	unsigned i;

	for (i = 0; i < NBINS; i++) {
		FUNC1(tsdn, &arena->bins[i]);
	}
	FUNC3(tsdn, &arena->large_mtx);
	FUNC0(tsdn, arena->base);
	FUNC3(tsdn, &arena->extent_avail_mtx);
	FUNC2(tsdn, &arena->extents_dirty);
	FUNC2(tsdn, &arena->extents_muzzy);
	FUNC2(tsdn, &arena->extents_retained);
	FUNC3(tsdn, &arena->extent_grow_mtx);
	FUNC3(tsdn, &arena->decay_dirty.mtx);
	FUNC3(tsdn, &arena->decay_muzzy.mtx);
	if (config_stats) {
		FUNC3(tsdn, &arena->tcache_ql_mtx);
	}
}