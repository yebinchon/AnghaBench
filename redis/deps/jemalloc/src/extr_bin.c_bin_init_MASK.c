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
struct TYPE_3__ {int /*<<< orphan*/  stats; int /*<<< orphan*/  slabs_full; int /*<<< orphan*/  slabs_nonfull; int /*<<< orphan*/ * slabcur; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ bin_t ;
typedef  int /*<<< orphan*/  bin_stats_t ;

/* Variables and functions */
 int /*<<< orphan*/  WITNESS_RANK_BIN ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  malloc_mutex_rank_exclusive ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

bool
FUNC4(bin_t *bin) {
	if (FUNC2(&bin->lock, "bin", WITNESS_RANK_BIN,
	    malloc_mutex_rank_exclusive)) {
		return true;
	}
	bin->slabcur = NULL;
	FUNC0(&bin->slabs_nonfull);
	FUNC1(&bin->slabs_full);
	if (config_stats) {
		FUNC3(&bin->stats, 0, sizeof(bin_stats_t));
	}
	return false;
}