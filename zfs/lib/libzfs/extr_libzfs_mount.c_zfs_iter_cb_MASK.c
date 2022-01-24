#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  get_all_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ ZFS_CANMOUNT_NOAUTO ; 
 scalar_t__ ZFS_KEYSTATUS_UNAVAILABLE ; 
 int /*<<< orphan*/  ZFS_PROP_CANMOUNT ; 
 int /*<<< orphan*/  ZFS_PROP_INCONSISTENT ; 
 int /*<<< orphan*/  ZFS_PROP_KEYSTATUS ; 
 int /*<<< orphan*/  ZFS_PROP_RECEIVE_RESUME_TOKEN ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(zfs_handle_t *zhp, void *data)
{
	get_all_cb_t *cbp = data;

	if (!(FUNC2(zhp) & ZFS_TYPE_FILESYSTEM)) {
		FUNC1(zhp);
		return (0);
	}

	if (FUNC5(zhp, ZFS_PROP_CANMOUNT) == ZFS_CANMOUNT_NOAUTO) {
		FUNC1(zhp);
		return (0);
	}

	if (FUNC5(zhp, ZFS_PROP_KEYSTATUS) ==
	    ZFS_KEYSTATUS_UNAVAILABLE) {
		FUNC1(zhp);
		return (0);
	}

	/*
	 * If this filesystem is inconsistent and has a receive resume
	 * token, we can not mount it.
	 */
	if (FUNC5(zhp, ZFS_PROP_INCONSISTENT) &&
	    FUNC4(zhp, ZFS_PROP_RECEIVE_RESUME_TOKEN,
	    NULL, 0, NULL, NULL, 0, B_TRUE) == 0) {
		FUNC1(zhp);
		return (0);
	}

	FUNC0(cbp, zhp);
	if (FUNC3(zhp, zfs_iter_cb, cbp) != 0) {
		FUNC1(zhp);
		return (-1);
	}
	return (0);
}