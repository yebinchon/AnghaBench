#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_alloc_list_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_15__ {scalar_t__ ms_disabled; int ms_allocator; int /*<<< orphan*/  ms_primary; scalar_t__ ms_start; int /*<<< orphan*/  ms_weight; scalar_t__ ms_condensing; } ;
typedef  TYPE_1__ metaslab_t ;
struct TYPE_16__ {int /*<<< orphan*/  mg_metaslab_tree; } ;
typedef  TYPE_2__ metaslab_group_t ;
typedef  int /*<<< orphan*/  dva_t ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  AVL_AFTER ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ METASLAB_WEIGHT_PRIMARY ; 
 int /*<<< orphan*/  TRACE_TOO_SMALL ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*,scalar_t__,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static metaslab_t *
FUNC6(metaslab_group_t *mg, uint64_t activation_weight,
    dva_t *dva, int d, boolean_t want_unique, uint64_t asize, int allocator,
    boolean_t try_hard, zio_alloc_list_t *zal, metaslab_t *search,
    boolean_t *was_active)
{
	avl_index_t idx;
	avl_tree_t *t = &mg->mg_metaslab_tree;
	metaslab_t *msp = FUNC1(t, search, &idx);
	if (msp == NULL)
		msp = FUNC2(t, idx, AVL_AFTER);

	for (; msp != NULL; msp = FUNC0(t, msp)) {
		int i;
		if (!FUNC4(msp, asize, try_hard)) {
			FUNC5(zal, mg, msp, asize, d,
			    TRACE_TOO_SMALL, allocator);
			continue;
		}

		/*
		 * If the selected metaslab is condensing or disabled,
		 * skip it.
		 */
		if (msp->ms_condensing || msp->ms_disabled > 0)
			continue;

		*was_active = msp->ms_allocator != -1;
		/*
		 * If we're activating as primary, this is our first allocation
		 * from this disk, so we don't need to check how close we are.
		 * If the metaslab under consideration was already active,
		 * we're getting desperate enough to steal another allocator's
		 * metaslab, so we still don't care about distances.
		 */
		if (activation_weight == METASLAB_WEIGHT_PRIMARY || *was_active)
			break;

		for (i = 0; i < d; i++) {
			if (want_unique &&
			    !FUNC3(msp, &dva[i]))
				break;  /* try another metaslab */
		}
		if (i == d)
			break;
	}

	if (msp != NULL) {
		search->ms_weight = msp->ms_weight;
		search->ms_start = msp->ms_start + 1;
		search->ms_allocator = msp->ms_allocator;
		search->ms_primary = msp->ms_primary;
	}
	return (msp);
}