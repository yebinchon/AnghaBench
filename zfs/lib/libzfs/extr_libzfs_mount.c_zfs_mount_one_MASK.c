#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_2__ {int ms_mntstatus; int /*<<< orphan*/  ms_mntflags; int /*<<< orphan*/  ms_mntopts; } ;
typedef  TYPE_1__ mount_state_t ;

/* Variables and functions */
 scalar_t__ ZFS_KEYSTATUS_UNAVAILABLE ; 
 int /*<<< orphan*/  ZFS_PROP_KEYSTATUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(zfs_handle_t *zhp, void *arg)
{
	mount_state_t *ms = arg;
	int ret = 0;

	/*
	 * don't attempt to mount encrypted datasets with
	 * unloaded keys
	 */
	if (FUNC1(zhp, ZFS_PROP_KEYSTATUS) ==
	    ZFS_KEYSTATUS_UNAVAILABLE)
		return (0);

	if (FUNC0(zhp, ms->ms_mntopts, ms->ms_mntflags) != 0)
		ret = ms->ms_mntstatus = -1;
	return (ret);
}