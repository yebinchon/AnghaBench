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
struct TYPE_6__ {int /*<<< orphan*/ * zv_objset; int /*<<< orphan*/  zv_name; int /*<<< orphan*/  zv_state_lock; int /*<<< orphan*/  zv_suspend_lock; } ;
typedef  TYPE_1__ zvol_state_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ZVOL ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char) ; 
 int FUNC10 (TYPE_1__*) ; 

int
FUNC11(zvol_state_t *zv, boolean_t readonly)
{
	objset_t *os;
	int error, locked = 0;
	boolean_t ro;

	FUNC0(FUNC2(&zv->zv_suspend_lock));
	FUNC0(FUNC1(&zv->zv_state_lock));

	/*
	 * In all other cases the spa_namespace_lock is taken before the
	 * bdev->bd_mutex lock.	 But in this case the Linux __blkdev_get()
	 * function calls fops->open() with the bdev->bd_mutex lock held.
	 * This deadlock can be easily observed with zvols used as vdevs.
	 *
	 * To avoid a potential lock inversion deadlock we preemptively
	 * try to take the spa_namespace_lock().  Normally it will not
	 * be contended and this is safe because spa_open_common() handles
	 * the case where the caller already holds the spa_namespace_lock.
	 *
	 * When it is contended we risk a lock inversion if we were to
	 * block waiting for the lock.	Luckily, the __blkdev_get()
	 * function allows us to return -ERESTARTSYS which will result in
	 * bdev->bd_mutex being dropped, reacquired, and fops->open() being
	 * called again.  This process can be repeated safely until both
	 * locks are acquired.
	 */
	if (!FUNC7(&spa_namespace_lock)) {
		locked = FUNC8(&spa_namespace_lock);
		if (!locked)
			return (FUNC3(EINTR));
	}

	ro = (readonly || (FUNC9(zv->zv_name, '@') != NULL));
	error = FUNC5(zv->zv_name, DMU_OST_ZVOL, ro, B_TRUE, zv, &os);
	if (error)
		goto out_mutex;

	zv->zv_objset = os;

	error = FUNC10(zv);

	if (error) {
		FUNC4(os, 1, zv);
		zv->zv_objset = NULL;
	}

out_mutex:
	if (locked)
		FUNC6(&spa_namespace_lock);
	return (FUNC3(error));
}