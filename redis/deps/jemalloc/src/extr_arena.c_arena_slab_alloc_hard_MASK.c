#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_6__ {int /*<<< orphan*/  slab_size; } ;
typedef  TYPE_1__ bin_info_t ;
struct TYPE_7__ {int /*<<< orphan*/  stats; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE ; 
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static extent_t *
FUNC4(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, const bin_info_t *bin_info,
    szind_t szind) {
	extent_t *slab;
	bool zero, commit;

	FUNC3(FUNC2(tsdn),
	    WITNESS_RANK_CORE, 0);

	zero = false;
	commit = true;
	slab = FUNC1(tsdn, arena, r_extent_hooks, NULL,
	    bin_info->slab_size, 0, PAGE, true, szind, &zero, &commit);

	if (config_stats && slab != NULL) {
		FUNC0(tsdn, &arena->stats,
		    bin_info->slab_size);
	}

	return slab;
}