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
struct TYPE_3__ {int zv_flags; int /*<<< orphan*/  zv_suspend_lock; int /*<<< orphan*/  zv_state_lock; int /*<<< orphan*/  zv_volblocksize; int /*<<< orphan*/  zv_objset; } ;
typedef  TYPE_1__ zvol_state_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ENOTSUP ; 
 int ENXIO ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 int ZVOL_RDONLY ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (char const*,int /*<<< orphan*/ ) ; 

int
FUNC13(const char *name, uint64_t volblocksize)
{
	zvol_state_t *zv;
	dmu_tx_t *tx;
	int error;

	zv = FUNC12(name, RW_READER);

	if (zv == NULL)
		return (FUNC3(ENXIO));

	FUNC0(FUNC1(&zv->zv_state_lock));
	FUNC0(FUNC2(&zv->zv_suspend_lock));

	if (zv->zv_flags & ZVOL_RDONLY) {
		FUNC10(&zv->zv_state_lock);
		FUNC11(&zv->zv_suspend_lock);
		return (FUNC3(EROFS));
	}

	tx = FUNC8(zv->zv_objset);
	FUNC9(tx, ZVOL_OBJ);
	error = FUNC6(tx, TXG_WAIT);
	if (error) {
		FUNC5(tx);
	} else {
		error = FUNC4(zv->zv_objset, ZVOL_OBJ,
		    volblocksize, 0, tx);
		if (error == ENOTSUP)
			error = FUNC3(EBUSY);
		FUNC7(tx);
		if (error == 0)
			zv->zv_volblocksize = volblocksize;
	}

	FUNC10(&zv->zv_state_lock);
	FUNC11(&zv->zv_suspend_lock);

	return (FUNC3(error));
}