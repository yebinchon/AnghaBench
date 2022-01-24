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
struct TYPE_6__ {scalar_t__ zv_open_count; int zv_flags; int /*<<< orphan*/  zv_suspend_lock; int /*<<< orphan*/  zv_state_lock; } ;
typedef  TYPE_2__ zvol_state_t ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int fmode_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {TYPE_2__* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int EINTR ; 
 int ENXIO ; 
 int ERESTARTSYS ; 
 int EROFS ; 
 int FMODE_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_READER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int ZVOL_RDONLY ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  zvol_state_lock ; 

__attribute__((used)) static int
FUNC13(struct block_device *bdev, fmode_t flag)
{
	zvol_state_t *zv;
	int error = 0;
	boolean_t drop_suspend = B_TRUE;

	FUNC7(&zvol_state_lock, RW_READER);
	/*
	 * Obtain a copy of private_data under the zvol_state_lock to make
	 * sure that either the result of zvol free code path setting
	 * bdev->bd_disk->private_data to NULL is observed, or zvol_free()
	 * is not called on this zv because of the positive zv_open_count.
	 */
	zv = bdev->bd_disk->private_data;
	if (zv == NULL) {
		FUNC8(&zvol_state_lock);
		return (FUNC3(-ENXIO));
	}

	FUNC5(&zv->zv_state_lock);
	/*
	 * make sure zvol is not suspended during first open
	 * (hold zv_suspend_lock) and respect proper lock acquisition
	 * ordering - zv_suspend_lock before zv_state_lock
	 */
	if (zv->zv_open_count == 0) {
		if (!FUNC9(&zv->zv_suspend_lock, RW_READER)) {
			FUNC6(&zv->zv_state_lock);
			FUNC7(&zv->zv_suspend_lock, RW_READER);
			FUNC5(&zv->zv_state_lock);
			/* check to see if zv_suspend_lock is needed */
			if (zv->zv_open_count != 0) {
				FUNC8(&zv->zv_suspend_lock);
				drop_suspend = B_FALSE;
			}
		}
	} else {
		drop_suspend = B_FALSE;
	}
	FUNC8(&zvol_state_lock);

	FUNC0(FUNC1(&zv->zv_state_lock));
	FUNC0(zv->zv_open_count != 0 || FUNC2(&zv->zv_suspend_lock));

	if (zv->zv_open_count == 0) {
		error = -FUNC11(zv, !(flag & FMODE_WRITE));
		if (error)
			goto out_mutex;
	}

	if ((flag & FMODE_WRITE) && (zv->zv_flags & ZVOL_RDONLY)) {
		error = -EROFS;
		goto out_open_count;
	}

	zv->zv_open_count++;

	FUNC6(&zv->zv_state_lock);
	if (drop_suspend)
		FUNC8(&zv->zv_suspend_lock);

	FUNC4(bdev);

	return (0);

out_open_count:
	if (zv->zv_open_count == 0)
		FUNC12(zv);

out_mutex:
	FUNC6(&zv->zv_state_lock);
	if (drop_suspend)
		FUNC8(&zv->zv_suspend_lock);
	if (error == -EINTR) {
		error = -ERESTARTSYS;
		FUNC10();
	}
	return (FUNC3(error));
}