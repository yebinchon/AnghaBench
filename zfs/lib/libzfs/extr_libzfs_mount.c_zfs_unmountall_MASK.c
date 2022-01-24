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
typedef  int /*<<< orphan*/  prop_changelist_t ;

/* Variables and functions */
 int /*<<< orphan*/  CL_GATHER_ITER_MOUNTED ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(zfs_handle_t *zhp, int flags)
{
	prop_changelist_t *clp;
	int ret;

	clp = FUNC1(zhp, ZFS_PROP_MOUNTPOINT,
	    CL_GATHER_ITER_MOUNTED, flags);
	if (clp == NULL)
		return (-1);

	ret = FUNC2(clp);
	FUNC0(clp);

	return (ret);
}