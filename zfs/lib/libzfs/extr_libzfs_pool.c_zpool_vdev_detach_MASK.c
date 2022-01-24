#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_7__ {char* member_0; int /*<<< orphan*/  zc_guid; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
#define  EBUSY 129 
#define  ENOTSUP 128 
 int /*<<< orphan*/  EZFS_BADTARGET ; 
 int /*<<< orphan*/  EZFS_ISL2CACHE ; 
 int /*<<< orphan*/  EZFS_ISSPARE ; 
 int /*<<< orphan*/  EZFS_NODEVICE ; 
 int /*<<< orphan*/  EZFS_NOREPLICAS ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_VDEV_DETACH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,char const*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC10(zpool_handle_t *zhp, const char *path)
{
	zfs_cmd_t zc = {"\0"};
	char msg[1024];
	nvlist_t *tgt;
	boolean_t avail_spare, l2cache;
	libzfs_handle_t *hdl = zhp->zpool_hdl;

	(void) FUNC2(msg, sizeof (msg),
	    FUNC0(TEXT_DOMAIN, "cannot detach %s"), path);

	(void) FUNC3(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	if ((tgt = FUNC8(zhp, path, &avail_spare, &l2cache,
	    NULL)) == NULL)
		return (FUNC5(hdl, EZFS_NODEVICE, msg));

	if (avail_spare)
		return (FUNC5(hdl, EZFS_ISSPARE, msg));

	if (l2cache)
		return (FUNC5(hdl, EZFS_ISL2CACHE, msg));

	FUNC4(FUNC1(tgt, ZPOOL_CONFIG_GUID, &zc.zc_guid) == 0);

	if (FUNC7(hdl, ZFS_IOC_VDEV_DETACH, &zc) == 0)
		return (0);

	switch (errno) {

	case ENOTSUP:
		/*
		 * Can't detach from this type of vdev.
		 */
		FUNC6(hdl, FUNC0(TEXT_DOMAIN, "only "
		    "applicable to mirror and replacing vdevs"));
		(void) FUNC5(hdl, EZFS_BADTARGET, msg);
		break;

	case EBUSY:
		/*
		 * There are no other replicas of this device.
		 */
		(void) FUNC5(hdl, EZFS_NOREPLICAS, msg);
		break;

	default:
		(void) FUNC9(hdl, errno, msg);
	}

	return (-1);
}