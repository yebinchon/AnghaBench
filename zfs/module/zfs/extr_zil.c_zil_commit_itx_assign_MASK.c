#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zl_os; } ;
typedef  TYPE_1__ zilog_t ;
typedef  int /*<<< orphan*/  zil_commit_waiter_t ;
typedef  int /*<<< orphan*/  lr_t ;
struct TYPE_8__ {int /*<<< orphan*/ * itx_private; int /*<<< orphan*/  itx_sync; } ;
typedef  TYPE_2__ itx_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  TX_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(zilog_t *zilog, zil_commit_waiter_t *zcw)
{
	dmu_tx_t *tx = FUNC3(zilog->zl_os);
	FUNC0(FUNC1(tx, TXG_WAIT));

	itx_t *itx = FUNC5(TX_COMMIT, sizeof (lr_t));
	itx->itx_sync = B_TRUE;
	itx->itx_private = zcw;

	FUNC4(zilog, itx, tx);

	FUNC2(tx);
}