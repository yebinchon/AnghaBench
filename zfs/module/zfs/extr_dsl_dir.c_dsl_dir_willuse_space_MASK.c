#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_11__ {struct TYPE_11__* dd_parent; int /*<<< orphan*/  dd_lock; int /*<<< orphan*/ * dd_space_towrite; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_12__ {size_t tx_txg; } ;
typedef  TYPE_2__ dmu_tx_t ;
struct TYPE_13__ {scalar_t__ dd_used_bytes; } ;

/* Variables and functions */
 size_t TXG_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_7__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC6(dsl_dir_t *dd, int64_t space, dmu_tx_t *tx)
{
	int64_t parent_space;
	uint64_t est_used;

	do {
		FUNC3(&dd->dd_lock);
		if (space > 0)
			dd->dd_space_towrite[tx->tx_txg & TXG_MASK] += space;

		est_used = FUNC2(dd) +
		    FUNC1(dd)->dd_used_bytes;
		parent_space = FUNC5(dd, est_used, space);
		FUNC4(&dd->dd_lock);

		/* Make sure that we clean up dd_space_to* */
		FUNC0(dd, tx);

		dd = dd->dd_parent;
		space = parent_space;
	} while (space && dd);
}