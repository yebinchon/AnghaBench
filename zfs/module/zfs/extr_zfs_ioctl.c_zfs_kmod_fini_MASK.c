#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* zs_next; } ;
typedef  TYPE_1__ zfsdev_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rrw_tsd_key ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_allow_log_key ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  zfs_fsyncer_key ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* zfsdev_state_list ; 
 int /*<<< orphan*/  zfsdev_state_lock ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(void)
{
	zfsdev_state_t *zs, *zsprev = NULL;

	FUNC5();

	FUNC1(&zfsdev_state_lock);

	for (zs = zfsdev_state_list; zs != NULL; zs = zs->zs_next) {
		if (zsprev)
			FUNC0(zsprev, sizeof (zfsdev_state_t));
		zsprev = zs;
	}
	if (zsprev)
		FUNC0(zsprev, sizeof (zfsdev_state_t));

	FUNC4();
	FUNC2();
	FUNC6();

	FUNC3(&zfs_fsyncer_key);
	FUNC3(&rrw_tsd_key);
	FUNC3(&zfs_allow_log_key);
}