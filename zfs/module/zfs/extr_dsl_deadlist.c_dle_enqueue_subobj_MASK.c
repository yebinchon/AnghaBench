#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  dl_object; int /*<<< orphan*/  dl_os; int /*<<< orphan*/  dl_lock; } ;
typedef  TYPE_1__ dsl_deadlist_t ;
struct TYPE_12__ {scalar_t__ bpo_object; } ;
struct TYPE_10__ {int /*<<< orphan*/  dle_mintxg; TYPE_6__ dle_bpobj; } ;
typedef  TYPE_2__ dsl_deadlist_entry_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_11__ {scalar_t__ dp_empty_bpobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(dsl_deadlist_t *dl, dsl_deadlist_entry_t *dle,
    uint64_t obj, dmu_tx_t *tx)
{
	FUNC0(FUNC1(&dl->dl_lock));
	if (dle->dle_bpobj.bpo_object !=
	    FUNC7(dl->dl_os)->dp_empty_bpobj) {
		FUNC5(&dle->dle_bpobj, obj, tx);
	} else {
		FUNC3(&dle->dle_bpobj);
		FUNC4(dl->dl_os, tx);
		FUNC2(FUNC6(&dle->dle_bpobj, dl->dl_os, obj));
		FUNC2(FUNC8(dl->dl_os, dl->dl_object,
		    dle->dle_mintxg, obj, tx));
	}
}