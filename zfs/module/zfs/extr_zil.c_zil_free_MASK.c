#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int zl_stop_sync; int /*<<< orphan*/  zl_cv_suspend; int /*<<< orphan*/  zl_lock; int /*<<< orphan*/  zl_issuer_lock; TYPE_1__* zl_itxg; int /*<<< orphan*/  zl_itx_commit_list; int /*<<< orphan*/  zl_lwb_list; int /*<<< orphan*/  zl_suspending; int /*<<< orphan*/  zl_suspend; } ;
typedef  TYPE_2__ zilog_t ;
struct TYPE_5__ {int /*<<< orphan*/  itxg_lock; scalar_t__ itxg_itxs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int TXG_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void
FUNC8(zilog_t *zilog)
{
	int i;

	zilog->zl_stop_sync = 1;

	FUNC1(zilog->zl_suspend);
	FUNC1(zilog->zl_suspending);

	FUNC0(FUNC5(&zilog->zl_lwb_list));
	FUNC4(&zilog->zl_lwb_list);

	FUNC0(FUNC5(&zilog->zl_itx_commit_list));
	FUNC4(&zilog->zl_itx_commit_list);

	for (i = 0; i < TXG_SIZE; i++) {
		/*
		 * It's possible for an itx to be generated that doesn't dirty
		 * a txg (e.g. ztest TX_TRUNCATE). So there's no zil_clean()
		 * callback to remove the entry. We remove those here.
		 *
		 * Also free up the ziltest itxs.
		 */
		if (zilog->zl_itxg[i].itxg_itxs)
			FUNC7(zilog->zl_itxg[i].itxg_itxs);
		FUNC6(&zilog->zl_itxg[i].itxg_lock);
	}

	FUNC6(&zilog->zl_issuer_lock);
	FUNC6(&zilog->zl_lock);

	FUNC2(&zilog->zl_cv_suspend);

	FUNC3(zilog, sizeof (zilog_t));
}