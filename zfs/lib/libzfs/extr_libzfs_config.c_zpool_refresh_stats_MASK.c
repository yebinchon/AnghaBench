#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int zpool_config_size; void* zpool_state; int /*<<< orphan*/ * zpool_config; int /*<<< orphan*/ * zpool_old_config; int /*<<< orphan*/ * zpool_hdl; int /*<<< orphan*/  zpool_name; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_10__ {char* member_0; int zc_cookie; int zc_nvlist_dst_size; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOMEM ; 
 void* POOL_STATE_ACTIVE ; 
 void* POOL_STATE_UNAVAIL ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_STATS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

int
FUNC7(zpool_handle_t *zhp, boolean_t *missing)
{
	zfs_cmd_t zc = {"\0"};
	int error;
	nvlist_t *config;
	libzfs_handle_t *hdl = zhp->zpool_hdl;

	*missing = B_FALSE;
	(void) FUNC1(zc.zc_name, zhp->zpool_name);

	if (zhp->zpool_config_size == 0)
		zhp->zpool_config_size = 1 << 16;

	if (FUNC2(hdl, &zc, zhp->zpool_config_size) != 0)
		return (-1);

	for (;;) {
		if (FUNC6(zhp->zpool_hdl, ZFS_IOC_POOL_STATS,
		    &zc) == 0) {
			/*
			 * The real error is returned in the zc_cookie field.
			 */
			error = zc.zc_cookie;
			break;
		}

		if (errno == ENOMEM) {
			if (FUNC3(hdl, &zc) != 0) {
				FUNC4(&zc);
				return (-1);
			}
		} else {
			FUNC4(&zc);
			if (errno == ENOENT || errno == EINVAL)
				*missing = B_TRUE;
			zhp->zpool_state = POOL_STATE_UNAVAIL;
			return (0);
		}
	}

	if (FUNC5(hdl, &zc, &config) != 0) {
		FUNC4(&zc);
		return (-1);
	}

	FUNC4(&zc);

	zhp->zpool_config_size = zc.zc_nvlist_dst_size;

	if (zhp->zpool_config != NULL) {
		FUNC0(zhp->zpool_old_config);

		zhp->zpool_old_config = zhp->zpool_config;
	}

	zhp->zpool_config = config;
	if (error)
		zhp->zpool_state = POOL_STATE_UNAVAIL;
	else
		zhp->zpool_state = POOL_STATE_ACTIVE;

	return (0);
}