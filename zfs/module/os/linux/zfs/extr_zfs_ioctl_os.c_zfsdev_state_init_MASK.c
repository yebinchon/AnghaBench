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
struct TYPE_4__ {int zs_minor; struct TYPE_4__* zs_next; int /*<<< orphan*/  zs_zevent; int /*<<< orphan*/  zs_onexit; struct file* zs_file; } ;
typedef  TYPE_1__ zfsdev_state_t ;
typedef  int /*<<< orphan*/  zfs_zevent_t ;
typedef  int /*<<< orphan*/  zfs_onexit_t ;
struct file {TYPE_1__* private_data; } ;
typedef  void* minor_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 void* FUNC7 () ; 
 TYPE_1__* zfsdev_state_list ; 
 int /*<<< orphan*/  zfsdev_state_lock ; 

__attribute__((used)) static int
FUNC8(struct file *filp)
{
	zfsdev_state_t *zs, *zsprev = NULL;
	minor_t minor;
	boolean_t newzs = B_FALSE;

	FUNC0(FUNC1(&zfsdev_state_lock));

	minor = FUNC7();
	if (minor == 0)
		return (FUNC2(ENXIO));

	for (zs = zfsdev_state_list; zs != NULL; zs = zs->zs_next) {
		if (zs->zs_minor == -1)
			break;
		zsprev = zs;
	}

	if (!zs) {
		zs = FUNC3(sizeof (zfsdev_state_t), KM_SLEEP);
		newzs = B_TRUE;
	}

	zs->zs_file = filp;
	filp->private_data = zs;

	FUNC5((zfs_onexit_t **)&zs->zs_onexit);
	FUNC6((zfs_zevent_t **)&zs->zs_zevent);

	/*
	 * In order to provide for lock-free concurrent read access
	 * to the minor list in zfsdev_get_state_impl(), new entries
	 * must be completely written before linking them into the
	 * list whereas existing entries are already linked; the last
	 * operation must be updating zs_minor (from -1 to the new
	 * value).
	 */
	if (newzs) {
		zs->zs_minor = minor;
		FUNC4();
		zsprev->zs_next = zs;
	} else {
		FUNC4();
		zs->zs_minor = minor;
	}

	return (0);
}