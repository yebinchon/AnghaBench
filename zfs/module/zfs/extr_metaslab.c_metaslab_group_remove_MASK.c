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
typedef  int /*<<< orphan*/  multilist_sublist_t ;
struct TYPE_11__ {TYPE_2__* ms_group; int /*<<< orphan*/  ms_class_txg_node; int /*<<< orphan*/  ms_lock; } ;
typedef  TYPE_1__ metaslab_t ;
struct TYPE_12__ {int /*<<< orphan*/  mg_lock; TYPE_3__* mg_class; int /*<<< orphan*/  mg_metaslab_tree; } ;
typedef  TYPE_2__ metaslab_group_t ;
struct TYPE_13__ {int /*<<< orphan*/  mc_metaslab_txg_list; } ;
typedef  TYPE_3__ metaslab_class_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(metaslab_group_t *mg, metaslab_t *msp)
{
	FUNC7(&msp->ms_lock);
	FUNC2(mg, msp);
	FUNC8(&msp->ms_lock);

	FUNC7(&mg->mg_lock);
	FUNC0(msp->ms_group == mg);
	FUNC1(&mg->mg_metaslab_tree, msp);

	metaslab_class_t *mc = msp->ms_group->mg_class;
	multilist_sublist_t *mls =
	    FUNC4(mc->mc_metaslab_txg_list, msp);
	if (FUNC3(&msp->ms_class_txg_node))
		FUNC5(mls, msp);
	FUNC6(mls);

	msp->ms_group = NULL;
	FUNC8(&mg->mg_lock);
}