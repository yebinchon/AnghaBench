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
typedef  int /*<<< orphan*/  zfsdev_state_t ;
struct TYPE_3__ {int zs_minor; } ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * rrw_tsd_destroy ; 
 int /*<<< orphan*/  rrw_tsd_key ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * zfs_allow_log_destroy ; 
 int /*<<< orphan*/  zfs_allow_log_key ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  zfs_fsyncer_key ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 TYPE_1__* zfsdev_state_list ; 
 int /*<<< orphan*/  zfsdev_state_lock ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 

int
FUNC11(void)
{
	int error;

	if ((error = FUNC10()) != 0)
		return (error);

	FUNC3(FREAD | FWRITE);
	FUNC6();

	FUNC7();

	FUNC1(&zfsdev_state_lock, NULL, MUTEX_DEFAULT, NULL);
	zfsdev_state_list = FUNC0(sizeof (zfsdev_state_t), KM_SLEEP);
	zfsdev_state_list->zs_minor = -1;

	if ((error = FUNC8()) != 0)
		goto out;

	FUNC4(&zfs_fsyncer_key, NULL);
	FUNC4(&rrw_tsd_key, rrw_tsd_destroy);
	FUNC4(&zfs_allow_log_key, zfs_allow_log_destroy);

	return (0);
out:
	FUNC5();
	FUNC2();
	FUNC9();

	return (error);
}