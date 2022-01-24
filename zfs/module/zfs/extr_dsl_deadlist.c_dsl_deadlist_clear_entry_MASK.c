#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_12__ {int /*<<< orphan*/  dl_lock; int /*<<< orphan*/  dl_object; TYPE_1__* dl_phys; int /*<<< orphan*/  dl_dbuf; int /*<<< orphan*/ * dl_os; } ;
typedef  TYPE_2__ dsl_deadlist_t ;
struct TYPE_15__ {scalar_t__ bpo_object; } ;
struct TYPE_13__ {TYPE_7__ dle_bpobj; int /*<<< orphan*/  dle_mintxg; } ;
typedef  TYPE_3__ dsl_deadlist_entry_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_14__ {scalar_t__ dp_empty_bpobj; } ;
struct TYPE_11__ {int /*<<< orphan*/  dl_uncomp; int /*<<< orphan*/  dl_comp; int /*<<< orphan*/  dl_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_OLD_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC15(dsl_deadlist_entry_t *dle, dsl_deadlist_t *dl,
    dmu_tx_t *tx)
{
	uint64_t new_obj, used, comp, uncomp;
	objset_t *os = dl->dl_os;

	FUNC11(&dl->dl_lock);
	FUNC1(FUNC14(os, dl->dl_object, dle->dle_mintxg, tx));
	FUNC1(FUNC8(&dle->dle_bpobj, &used, &comp, &uncomp));
	FUNC9(dl->dl_dbuf, tx);
	dl->dl_phys->dl_used -= used;
	dl->dl_phys->dl_comp -= comp;
	dl->dl_phys->dl_uncomp -= uncomp;
	if (dle->dle_bpobj.bpo_object == FUNC10(os)->dp_empty_bpobj)
		FUNC4(os, tx);
	else
		FUNC5(os, dle->dle_bpobj.bpo_object, tx);
	FUNC3(&dle->dle_bpobj);
	new_obj = FUNC2(os, SPA_OLD_MAXBLOCKSIZE, tx);
	FUNC1(FUNC7(&dle->dle_bpobj, os, new_obj));
	FUNC1(FUNC13(os, dl->dl_object, dle->dle_mintxg,
	    new_obj, tx));
	FUNC0(FUNC6(&dle->dle_bpobj));
	FUNC12(&dl->dl_lock);
}