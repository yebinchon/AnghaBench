#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int /*<<< orphan*/  dd_lock; int /*<<< orphan*/  dd_dbuf; } ;
typedef  TYPE_1__ dsl_dir_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  size_t dd_used_t ;
struct TYPE_6__ {int dd_flags; scalar_t__ dd_used_bytes; int /*<<< orphan*/ * dd_used_breakdown; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DD_FLAG_USED_BREAKDOWN ; 
 size_t DD_USED_NUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(dsl_dir_t *dd, int64_t delta,
    dd_used_t oldtype, dd_used_t newtype, dmu_tx_t *tx)
{
	FUNC1(FUNC3(tx));
	FUNC1(oldtype < DD_USED_NUM);
	FUNC1(newtype < DD_USED_NUM);

	if (delta == 0 ||
	    !(FUNC4(dd)->dd_flags & DD_FLAG_USED_BREAKDOWN))
		return;

	FUNC2(dd->dd_dbuf, tx);
	FUNC5(&dd->dd_lock);
	FUNC1(delta > 0 ?
	    FUNC4(dd)->dd_used_breakdown[oldtype] >= delta :
	    FUNC4(dd)->dd_used_breakdown[newtype] >= -delta);
	FUNC1(FUNC4(dd)->dd_used_bytes >= FUNC0(delta));
	FUNC4(dd)->dd_used_breakdown[oldtype] -= delta;
	FUNC4(dd)->dd_used_breakdown[newtype] += delta;
	FUNC6(&dd->dd_lock);
}