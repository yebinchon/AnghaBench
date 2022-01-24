#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * zd_os; } ;
typedef  TYPE_1__ ztest_ds_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  rl_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_10__ {int /*<<< orphan*/  lr_foid; int /*<<< orphan*/  lr_length; int /*<<< orphan*/  lr_offset; } ;
typedef  TYPE_2__ lr_truncate_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RL_READER ; 
 int /*<<< orphan*/  RL_WRITER ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(void *arg1, void *arg2, boolean_t byteswap)
{
	ztest_ds_t *zd = arg1;
	lr_truncate_t *lr = arg2;
	objset_t *os = zd->zd_os;
	dmu_tx_t *tx;
	uint64_t txg;
	rl_t *rl;

	if (byteswap)
		FUNC1(lr, sizeof (*lr));

	FUNC7(zd, lr->lr_foid, RL_READER);
	rl = FUNC9(zd, lr->lr_foid, lr->lr_offset, lr->lr_length,
	    RL_WRITER);

	tx = FUNC4(os);

	FUNC5(tx, lr->lr_foid, lr->lr_offset, lr->lr_length);

	txg = FUNC11(tx, TXG_WAIT, FTAG);
	if (txg == 0) {
		FUNC10(rl);
		FUNC8(zd, lr->lr_foid);
		return (ENOSPC);
	}

	FUNC0(FUNC2(os, lr->lr_foid, lr->lr_offset,
	    lr->lr_length, tx) == 0);

	(void) FUNC6(zd, tx, lr);

	FUNC3(tx);

	FUNC10(rl);
	FUNC8(zd, lr->lr_foid);

	return (0);
}