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
struct TYPE_9__ {int /*<<< orphan*/ * zfs_recvd_props; int /*<<< orphan*/ * zfs_hdl; int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_10__ {char* member_0; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  ZFS_IOC_OBJSET_RECVD_PROPS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC7(zfs_handle_t *zhp)
{
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	nvlist_t *recvdprops;
	zfs_cmd_t zc = {"\0"};
	int err;

	if (FUNC2(hdl, &zc, 0) != 0)
		return (-1);

	(void) FUNC1(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

	while (FUNC6(hdl, ZFS_IOC_OBJSET_RECVD_PROPS, &zc) != 0) {
		if (errno == ENOMEM) {
			if (FUNC3(hdl, &zc) != 0) {
				return (-1);
			}
		} else {
			FUNC4(&zc);
			return (-1);
		}
	}

	err = FUNC5(zhp->zfs_hdl, &zc, &recvdprops);
	FUNC4(&zc);
	if (err != 0)
		return (-1);

	FUNC0(zhp->zfs_recvd_props);
	zhp->zfs_recvd_props = recvdprops;

	return (0);
}