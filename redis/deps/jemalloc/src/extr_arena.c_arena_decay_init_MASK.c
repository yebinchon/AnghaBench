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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  arena_stats_decay_t ;
struct TYPE_4__ {int purging; int /*<<< orphan*/ * stats; int /*<<< orphan*/  mtx; scalar_t__ ceil_npages; } ;
typedef  TYPE_1__ arena_decay_t ;

/* Variables and functions */
 int /*<<< orphan*/  WITNESS_RANK_DECAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ config_debug ; 
 scalar_t__ config_stats ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  malloc_mutex_rank_exclusive ; 

__attribute__((used)) static bool
FUNC3(arena_decay_t *decay, ssize_t decay_ms,
    arena_stats_decay_t *stats) {
	if (config_debug) {
		for (size_t i = 0; i < sizeof(arena_decay_t); i++) {
			FUNC1(((char *)decay)[i] == 0);
		}
		decay->ceil_npages = 0;
	}
	if (FUNC2(&decay->mtx, "decay", WITNESS_RANK_DECAY,
	    malloc_mutex_rank_exclusive)) {
		return true;
	}
	decay->purging = false;
	FUNC0(decay, decay_ms);
	/* Memory is zeroed, so there is no need to clear stats. */
	if (config_stats) {
		decay->stats = stats;
	}
	return false;
}