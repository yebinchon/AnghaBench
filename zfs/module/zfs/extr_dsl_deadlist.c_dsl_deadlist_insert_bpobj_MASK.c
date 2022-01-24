#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_12__ {int /*<<< orphan*/  dl_tree; TYPE_1__* dl_phys; int /*<<< orphan*/  dl_dbuf; int /*<<< orphan*/  dl_os; int /*<<< orphan*/  dl_lock; } ;
typedef  TYPE_2__ dsl_deadlist_t ;
struct TYPE_13__ {scalar_t__ dle_mintxg; } ;
typedef  TYPE_3__ dsl_deadlist_entry_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  bpobj_t ;
typedef  int /*<<< orphan*/  avl_index_t ;
struct TYPE_11__ {int /*<<< orphan*/  dl_uncomp; int /*<<< orphan*/  dl_comp; int /*<<< orphan*/  dl_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVL_BEFORE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_3__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC11(dsl_deadlist_t *dl, uint64_t obj, uint64_t birth,
    dmu_tx_t *tx)
{
	dsl_deadlist_entry_t dle_tofind;
	dsl_deadlist_entry_t *dle;
	avl_index_t where;
	uint64_t used, comp, uncomp;
	bpobj_t bpo;

	FUNC0(FUNC1(&dl->dl_lock));

	FUNC2(FUNC6(&bpo, dl->dl_os, obj));
	FUNC2(FUNC7(&bpo, &used, &comp, &uncomp));
	FUNC5(&bpo);

	FUNC10(dl);

	FUNC9(dl->dl_dbuf, tx);
	dl->dl_phys->dl_used += used;
	dl->dl_phys->dl_comp += comp;
	dl->dl_phys->dl_uncomp += uncomp;

	dle_tofind.dle_mintxg = birth;
	dle = FUNC3(&dl->dl_tree, &dle_tofind, &where);
	if (dle == NULL)
		dle = FUNC4(&dl->dl_tree, where, AVL_BEFORE);
	FUNC8(dl, dle, obj, tx);
}