#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {int /*<<< orphan*/  dl_lock; int /*<<< orphan*/  dl_object; int /*<<< orphan*/  dl_os; int /*<<< orphan*/  dl_tree; scalar_t__ dl_oldfmt; } ;
typedef  TYPE_1__ dsl_deadlist_t ;
struct TYPE_8__ {int /*<<< orphan*/  dle_bpobj; int /*<<< orphan*/  dle_mintxg; } ;
typedef  TYPE_2__ dsl_deadlist_entry_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  SPA_OLD_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_2__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC9(dsl_deadlist_t *dl, uint64_t mintxg, dmu_tx_t *tx)
{
	uint64_t obj;
	dsl_deadlist_entry_t *dle;

	if (dl->dl_oldfmt)
		return;

	dle = FUNC5(sizeof (*dle), KM_SLEEP);
	dle->dle_mintxg = mintxg;

	FUNC6(&dl->dl_lock);
	FUNC4(dl);

	obj = FUNC2(dl->dl_os, SPA_OLD_MAXBLOCKSIZE, tx);
	FUNC0(FUNC3(&dle->dle_bpobj, dl->dl_os, obj));
	FUNC1(&dl->dl_tree, dle);

	FUNC0(FUNC8(dl->dl_os, dl->dl_object,
	    mintxg, obj, tx));
	FUNC7(&dl->dl_lock);
}