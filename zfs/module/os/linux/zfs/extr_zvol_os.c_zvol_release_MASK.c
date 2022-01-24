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
struct TYPE_3__ {int zv_open_count; int /*<<< orphan*/  zv_suspend_lock; int /*<<< orphan*/  zv_state_lock; } ;
typedef  TYPE_1__ zvol_state_t ;
struct gendisk {TYPE_1__* private_data; } ;
typedef  int /*<<< orphan*/  fmode_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_READER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  zvol_state_lock ; 

__attribute__((used)) static void
FUNC9(struct gendisk *disk, fmode_t mode)
{
	zvol_state_t *zv;
	boolean_t drop_suspend = B_TRUE;

	FUNC5(&zvol_state_lock, RW_READER);
	zv = disk->private_data;

	FUNC3(&zv->zv_state_lock);
	FUNC0(zv->zv_open_count > 0);
	/*
	 * make sure zvol is not suspended during last close
	 * (hold zv_suspend_lock) and respect proper lock acquisition
	 * ordering - zv_suspend_lock before zv_state_lock
	 */
	if (zv->zv_open_count == 1) {
		if (!FUNC7(&zv->zv_suspend_lock, RW_READER)) {
			FUNC4(&zv->zv_state_lock);
			FUNC5(&zv->zv_suspend_lock, RW_READER);
			FUNC3(&zv->zv_state_lock);
			/* check to see if zv_suspend_lock is needed */
			if (zv->zv_open_count != 1) {
				FUNC6(&zv->zv_suspend_lock);
				drop_suspend = B_FALSE;
			}
		}
	} else {
		drop_suspend = B_FALSE;
	}
	FUNC6(&zvol_state_lock);

	FUNC0(FUNC1(&zv->zv_state_lock));
	FUNC0(zv->zv_open_count != 1 || FUNC2(&zv->zv_suspend_lock));

	zv->zv_open_count--;
	if (zv->zv_open_count == 0)
		FUNC8(zv);

	FUNC4(&zv->zv_state_lock);

	if (drop_suspend)
		FUNC6(&zv->zv_suspend_lock);
}