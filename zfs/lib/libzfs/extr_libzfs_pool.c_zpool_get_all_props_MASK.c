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
struct TYPE_9__ {int /*<<< orphan*/  zpool_props; int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_10__ {char* member_0; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_GET_PROPS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC6(zpool_handle_t *zhp)
{
	zfs_cmd_t zc = {"\0"};
	libzfs_handle_t *hdl = zhp->zpool_hdl;

	(void) FUNC0(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));

	if (FUNC1(hdl, &zc, 0) != 0)
		return (-1);

	while (FUNC5(hdl, ZFS_IOC_POOL_GET_PROPS, &zc) != 0) {
		if (errno == ENOMEM) {
			if (FUNC2(hdl, &zc) != 0) {
				FUNC3(&zc);
				return (-1);
			}
		} else {
			FUNC3(&zc);
			return (-1);
		}
	}

	if (FUNC4(hdl, &zc, &zhp->zpool_props) != 0) {
		FUNC3(&zc);
		return (-1);
	}

	FUNC3(&zc);

	return (0);
}