#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  dl_lock; int /*<<< orphan*/  dl_os; int /*<<< orphan*/  dl_tree; scalar_t__ dl_oldfmt; } ;
typedef  TYPE_1__ dsl_deadlist_t ;
struct TYPE_9__ {scalar_t__ dle_mintxg; } ;
typedef  TYPE_2__ dsl_deadlist_entry_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  SPA_OLD_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

uint64_t
FUNC10(dsl_deadlist_t *dl, uint64_t maxtxg,
    uint64_t mrs_obj, dmu_tx_t *tx)
{
	dsl_deadlist_entry_t *dle;
	uint64_t newobj;

	newobj = FUNC4(dl->dl_os, tx);

	if (dl->dl_oldfmt) {
		FUNC6(dl->dl_os, newobj, mrs_obj, tx);
		return (newobj);
	}

	FUNC7(&dl->dl_lock);
	FUNC5(dl);

	for (dle = FUNC2(&dl->dl_tree); dle;
	    dle = FUNC0(&dl->dl_tree, dle)) {
		uint64_t obj;

		if (dle->dle_mintxg >= maxtxg)
			break;

		obj = FUNC3(dl->dl_os, SPA_OLD_MAXBLOCKSIZE, tx);
		FUNC1(FUNC9(dl->dl_os, newobj,
		    dle->dle_mintxg, obj, tx));
	}
	FUNC8(&dl->dl_lock);
	return (newobj);
}