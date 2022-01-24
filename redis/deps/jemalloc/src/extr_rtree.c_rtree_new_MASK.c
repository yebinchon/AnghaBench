#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  init_lock; } ;
typedef  TYPE_1__ rtree_t ;

/* Variables and functions */
 int /*<<< orphan*/  WITNESS_RANK_RTREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  malloc_mutex_rank_exclusive ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

bool
FUNC3(rtree_t *rtree, bool zeroed) {
#ifdef JEMALLOC_JET
	if (!zeroed) {
		memset(rtree, 0, sizeof(rtree_t)); /* Clear root. */
	}
#else
	FUNC0(zeroed);
#endif

	if (FUNC1(&rtree->init_lock, "rtree", WITNESS_RANK_RTREE,
	    malloc_mutex_rank_exclusive)) {
		return true;
	}

	return false;
}