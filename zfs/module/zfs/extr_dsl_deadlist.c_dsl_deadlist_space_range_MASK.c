#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {int /*<<< orphan*/  dl_lock; int /*<<< orphan*/  dl_tree; int /*<<< orphan*/  dl_cache; int /*<<< orphan*/  dl_bpobj; scalar_t__ dl_oldfmt; } ;
typedef  TYPE_1__ dsl_deadlist_t ;
struct TYPE_11__ {scalar_t__ dlce_mintxg; scalar_t__ dlce_bytes; scalar_t__ dlce_comp; scalar_t__ dlce_uncomp; } ;
typedef  TYPE_2__ dsl_deadlist_cache_entry_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  AVL_AFTER ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(dsl_deadlist_t *dl, uint64_t mintxg, uint64_t maxtxg,
    uint64_t *usedp, uint64_t *compp, uint64_t *uncompp)
{
	dsl_deadlist_cache_entry_t *dlce;
	dsl_deadlist_cache_entry_t dlce_tofind;
	avl_index_t where;

	if (dl->dl_oldfmt) {
		FUNC1(FUNC4(&dl->dl_bpobj,
		    mintxg, maxtxg, usedp, compp, uncompp));
		return;
	}

	*usedp = *compp = *uncompp = 0;

	FUNC6(&dl->dl_lock);
	FUNC5(dl);
	dlce_tofind.dlce_mintxg = mintxg;
	dlce = FUNC2(&dl->dl_cache, &dlce_tofind, &where);

	/*
	 * If this mintxg doesn't exist, it may be an empty_bpobj which
	 * is omitted from the sparse tree.  Start at the next non-empty
	 * entry.
	 */
	if (dlce == NULL)
		dlce = FUNC3(&dl->dl_cache, where, AVL_AFTER);

	for (; dlce && dlce->dlce_mintxg < maxtxg;
	    dlce = FUNC0(&dl->dl_tree, dlce)) {
		*usedp += dlce->dlce_bytes;
		*compp += dlce->dlce_comp;
		*uncompp += dlce->dlce_uncomp;
	}

	FUNC7(&dl->dl_lock);
}