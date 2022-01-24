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
typedef  int /*<<< orphan*/  multilist_t ;
typedef  int /*<<< orphan*/  multilist_sublist_t ;
struct TYPE_8__ {scalar_t__ ms_selected_txg; scalar_t__ ms_selected_time; int /*<<< orphan*/  ms_lock; int /*<<< orphan*/  ms_class_txg_node; } ;
typedef  TYPE_1__ metaslab_t ;
struct TYPE_9__ {int /*<<< orphan*/ * mc_metaslab_txg_list; } ;
typedef  TYPE_2__ metaslab_class_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ metaslab_unload_delay ; 
 int /*<<< orphan*/  metaslab_unload_delay_ms ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(metaslab_class_t *mc, uint64_t txg)
{
	multilist_t *ml = mc->mc_metaslab_txg_list;
	for (int i = 0; i < FUNC3(ml); i++) {
		multilist_sublist_t *mls = FUNC6(ml, i);
		metaslab_t *msp = FUNC5(mls);
		FUNC8(mls);
		while (msp != NULL) {
			FUNC9(&msp->ms_lock);

			/*
			 * If the metaslab has been removed from the list
			 * (which could happen if we were at the memory limit
			 * and it was evicted during this loop), then we can't
			 * proceed and we should restart the sublist.
			 */
			if (!FUNC4(&msp->ms_class_txg_node)) {
				FUNC10(&msp->ms_lock);
				i--;
				break;
			}
			mls = FUNC6(ml, i);
			metaslab_t *next_msp = FUNC7(mls, msp);
			FUNC8(mls);
			if (txg >
			    msp->ms_selected_txg + metaslab_unload_delay &&
			    FUNC1() > msp->ms_selected_time +
			    (uint64_t)FUNC0(metaslab_unload_delay_ms)) {
				FUNC2(msp, txg);
			} else {
				/*
				 * Once we've hit a metaslab selected too
				 * recently to evict, we're done evicting for
				 * now.
				 */
				FUNC10(&msp->ms_lock);
				break;
			}
			FUNC10(&msp->ms_lock);
			msp = next_msp;
		}
	}
}