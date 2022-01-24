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

/* Variables and functions */
 int /*<<< orphan*/  WITNESS_RANK_EXTENT_POOL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  extent_mutex_pool ; 
 int /*<<< orphan*/  extents_rtree ; 
 scalar_t__ have_dss ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

bool
FUNC3(void) {
	if (FUNC2(&extents_rtree, true)) {
		return true;
	}

	if (FUNC1(&extent_mutex_pool, "extent_mutex_pool",
	    WITNESS_RANK_EXTENT_POOL)) {
		return true;
	}

	if (have_dss) {
		FUNC0();
	}

	return false;
}