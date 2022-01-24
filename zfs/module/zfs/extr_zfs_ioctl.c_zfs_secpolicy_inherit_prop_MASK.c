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
typedef  scalar_t__ zfs_prop_t ;
struct TYPE_3__ {int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_value; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_USERPROP ; 
 scalar_t__ ZPROP_INVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	zfs_prop_t prop = FUNC1(zc->zc_value);

	if (prop == ZPROP_INVAL) {
		if (!FUNC2(zc->zc_value))
			return (FUNC0(EINVAL));
		return (FUNC4(zc->zc_name,
		    ZFS_DELEG_PERM_USERPROP, cr));
	} else {
		return (FUNC3(zc->zc_name, prop,
		    NULL, cr));
	}
}