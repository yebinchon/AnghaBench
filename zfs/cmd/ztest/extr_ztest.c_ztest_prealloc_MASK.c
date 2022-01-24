#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * zd_os; } ;
typedef  TYPE_1__ ztest_ds_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  rl_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RL_READER ; 
 int /*<<< orphan*/  RL_WRITER ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(ztest_ds_t *zd, uint64_t object, uint64_t offset, uint64_t size)
{
	objset_t *os = zd->zd_os;
	dmu_tx_t *tx;
	uint64_t txg;
	rl_t *rl;

	FUNC6(FUNC1(os), 0);

	FUNC7(zd, object, RL_READER);
	rl = FUNC9(zd, object, offset, size, RL_WRITER);

	tx = FUNC4(os);

	FUNC5(tx, object, offset, size);

	txg = FUNC11(tx, TXG_WAIT, FTAG);

	if (txg != 0) {
		FUNC2(os, object, offset, size, tx);
		FUNC3(tx);
		FUNC6(FUNC1(os), txg);
	} else {
		(void) FUNC0(os, object, offset, size);
	}

	FUNC10(rl);
	FUNC8(zd, object);
}