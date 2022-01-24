#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tx_sync_lock; } ;
typedef  TYPE_1__ tx_state_t ;
typedef  int /*<<< orphan*/  kcondvar_t ;
typedef  scalar_t__ clock_t ;
typedef  int /*<<< orphan*/  callb_cpr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void
FUNC5(tx_state_t *tx, callb_cpr_t *cpr, kcondvar_t *cv, clock_t time)
{
	FUNC0(cpr);

	/*
	 * cv_wait_sig() is used instead of cv_wait() in order to prevent
	 * this process from incorrectly contributing to the system load
	 * average when idle.
	 */
	if (time) {
		(void) FUNC2(cv, &tx->tx_sync_lock,
		    FUNC4() + time);
	} else {
		FUNC3(cv, &tx->tx_sync_lock);
	}

	FUNC1(cpr, &tx->tx_sync_lock);
}