#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_5__ {unsigned int arena_ind; } ;
typedef  TYPE_1__ ctl_arena_t ;
struct TYPE_6__ {unsigned int narenas; int /*<<< orphan*/  destroyed; } ;

/* Variables and functions */
 int UINT_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned int,int,int) ; 
 TYPE_4__* ctl_arenas ; 
 int /*<<< orphan*/  destroyed_link ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned
FUNC5(tsd_t *tsd, extent_hooks_t *extent_hooks) {
	unsigned arena_ind;
	ctl_arena_t *ctl_arena;

	if ((ctl_arena = FUNC2(&ctl_arenas->destroyed, destroyed_link)) !=
	    NULL) {
		FUNC3(&ctl_arenas->destroyed, ctl_arena, destroyed_link);
		arena_ind = ctl_arena->arena_ind;
	} else {
		arena_ind = ctl_arenas->narenas;
	}

	/* Trigger stats allocation. */
	if (FUNC1(tsd, arena_ind, false, true) == NULL) {
		return UINT_MAX;
	}

	/* Initialize new arena. */
	if (FUNC0(FUNC4(tsd), arena_ind, extent_hooks) == NULL) {
		return UINT_MAX;
	}

	if (arena_ind == ctl_arenas->narenas) {
		ctl_arenas->narenas++;
	}

	return arena_ind;
}