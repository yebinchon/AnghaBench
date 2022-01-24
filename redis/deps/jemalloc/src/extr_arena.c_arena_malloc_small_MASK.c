#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_9__ {int /*<<< orphan*/  curregs; int /*<<< orphan*/  nrequests; int /*<<< orphan*/  nmalloc; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; TYPE_1__ stats; int /*<<< orphan*/ * slabcur; } ;
typedef  TYPE_2__ bin_t ;
struct TYPE_11__ {TYPE_2__* bins; } ;
typedef  TYPE_3__ arena_t ;

/* Variables and functions */
 size_t NBINS ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * bin_infos ; 
 scalar_t__ config_fill ; 
 scalar_t__ config_prof ; 
 scalar_t__ config_stats ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  opt_junk_alloc ; 
 int /*<<< orphan*/  opt_zero ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 size_t FUNC11 (size_t) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC13(tsdn_t *tsdn, arena_t *arena, szind_t binind, bool zero) {
	void *ret;
	bin_t *bin;
	size_t usize;
	extent_t *slab;

	FUNC5(binind < NBINS);
	bin = &arena->bins[binind];
	usize = FUNC11(binind);

	FUNC7(tsdn, &bin->lock);
	if ((slab = bin->slabcur) != NULL && FUNC6(slab) > 0) {
		ret = FUNC4(slab, &bin_infos[binind]);
	} else {
		ret = FUNC1(tsdn, arena, bin, binind);
	}

	if (ret == NULL) {
		FUNC8(tsdn, &bin->lock);
		return NULL;
	}

	if (config_stats) {
		bin->stats.nmalloc++;
		bin->stats.nrequests++;
		bin->stats.curregs++;
	}
	FUNC8(tsdn, &bin->lock);
	if (config_prof && FUNC3(tsdn, arena, usize)) {
		FUNC10(tsdn);
	}

	if (!zero) {
		if (config_fill) {
			if (FUNC12(opt_junk_alloc)) {
				FUNC0(ret,
				    &bin_infos[binind], false);
			} else if (FUNC12(opt_zero)) {
				FUNC9(ret, 0, usize);
			}
		}
	} else {
		if (config_fill && FUNC12(opt_junk_alloc)) {
			FUNC0(ret, &bin_infos[binind],
			    true);
		}
		FUNC9(ret, 0, usize);
	}

	FUNC2(tsdn, arena);
	return ret;
}