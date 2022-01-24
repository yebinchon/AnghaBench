#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_6__ {char* member_0; int /*<<< orphan*/  zc_obj; int /*<<< orphan*/  zc_cookie; scalar_t__ zc_guid; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  vdev_aux_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
#define  EBUSY 128 
 int /*<<< orphan*/  EZFS_NOREPLICAS ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  VDEV_STATE_FAULTED ; 
 int /*<<< orphan*/  ZFS_IOC_VDEV_SET_STATE ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC6(zpool_handle_t *zhp, uint64_t guid, vdev_aux_t aux)
{
	zfs_cmd_t zc = {"\0"};
	char msg[1024];
	libzfs_handle_t *hdl = zhp->zpool_hdl;

	(void) FUNC1(msg, sizeof (msg),
	    FUNC0(TEXT_DOMAIN, "cannot fault %llu"), (u_longlong_t)guid);

	(void) FUNC2(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	zc.zc_guid = guid;
	zc.zc_cookie = VDEV_STATE_FAULTED;
	zc.zc_obj = aux;

	if (FUNC4(hdl, ZFS_IOC_VDEV_SET_STATE, &zc) == 0)
		return (0);

	switch (errno) {
	case EBUSY:

		/*
		 * There are no other replicas of this device.
		 */
		return (FUNC3(hdl, EZFS_NOREPLICAS, msg));

	default:
		return (FUNC5(hdl, errno, msg));
	}

}