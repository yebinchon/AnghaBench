#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  multilist_sublist_t ;
struct TYPE_9__ {int /*<<< orphan*/  ms_selected_time; int /*<<< orphan*/  ms_selected_txg; int /*<<< orphan*/  ms_class_txg_node; TYPE_1__* ms_group; int /*<<< orphan*/  ms_lock; } ;
typedef  TYPE_2__ metaslab_t ;
struct TYPE_10__ {int /*<<< orphan*/  mc_metaslab_txg_list; } ;
typedef  TYPE_3__ metaslab_class_t ;
struct TYPE_8__ {TYPE_3__* mg_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(metaslab_t *msp, uint64_t txg)
{
	FUNC0(FUNC1(&msp->ms_lock));
	metaslab_class_t *mc = msp->ms_group->mg_class;
	multilist_sublist_t *mls =
	    FUNC5(mc->mc_metaslab_txg_list, msp);
	if (FUNC3(&msp->ms_class_txg_node))
		FUNC6(mls, msp);
	msp->ms_selected_txg = txg;
	msp->ms_selected_time = FUNC2();
	FUNC4(mls, msp);
	FUNC7(mls);
}