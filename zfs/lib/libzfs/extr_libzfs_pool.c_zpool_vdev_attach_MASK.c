#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_12__ {char* member_0; int zc_cookie; int /*<<< orphan*/  zc_guid; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
#define  EBUSY 133 
#define  EDOM 132 
#define  EINVAL 131 
#define  ENAMETOOLONG 130 
#define  ENOTSUP 129 
#define  EOVERFLOW 128 
 int /*<<< orphan*/  EZFS_BADDEV ; 
 int /*<<< orphan*/  EZFS_BADTARGET ; 
 int /*<<< orphan*/  EZFS_DEVOVERFLOW ; 
 int /*<<< orphan*/  EZFS_INVALCONFIG ; 
 int /*<<< orphan*/  EZFS_ISL2CACHE ; 
 int /*<<< orphan*/  EZFS_ISSPARE ; 
 int /*<<< orphan*/  EZFS_NODEVICE ; 
 int /*<<< orphan*/  SPA_VERSION_MULTI_REPLACE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_VDEV_ATTACH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_IS_SPARE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  ZPOOL_PROP_VERSION ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*,char const*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC21(zpool_handle_t *zhp,
    const char *old_disk, const char *new_disk, nvlist_t *nvroot, int replacing)
{
	zfs_cmd_t zc = {"\0"};
	char msg[1024];
	int ret;
	nvlist_t *tgt;
	boolean_t avail_spare, l2cache, islog;
	uint64_t val;
	char *newname;
	nvlist_t **child;
	uint_t children;
	nvlist_t *config_root;
	libzfs_handle_t *hdl = zhp->zpool_hdl;
	boolean_t rootpool = FUNC18(zhp);

	if (replacing)
		(void) FUNC7(msg, sizeof (msg), FUNC0(TEXT_DOMAIN,
		    "cannot replace %s with %s"), old_disk, new_disk);
	else
		(void) FUNC7(msg, sizeof (msg), FUNC0(TEXT_DOMAIN,
		    "cannot attach %s to %s"), new_disk, old_disk);

	(void) FUNC8(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	if ((tgt = FUNC15(zhp, old_disk, &avail_spare, &l2cache,
	    &islog)) == NULL)
		return (FUNC12(hdl, EZFS_NODEVICE, msg));

	if (avail_spare)
		return (FUNC12(hdl, EZFS_ISSPARE, msg));

	if (l2cache)
		return (FUNC12(hdl, EZFS_ISL2CACHE, msg));

	FUNC9(FUNC6(tgt, ZPOOL_CONFIG_GUID, &zc.zc_guid) == 0);
	zc.zc_cookie = replacing;

	if (FUNC5(nvroot, ZPOOL_CONFIG_CHILDREN,
	    &child, &children) != 0 || children != 1) {
		FUNC13(hdl, FUNC0(TEXT_DOMAIN,
		    "new device must be a single disk"));
		return (FUNC12(hdl, EZFS_INVALCONFIG, msg));
	}

	FUNC9(FUNC4(FUNC16(zhp, NULL),
	    ZPOOL_CONFIG_VDEV_TREE, &config_root) == 0);

	if ((newname = FUNC20(NULL, NULL, child[0], 0)) == NULL)
		return (-1);

	/*
	 * If the target is a hot spare that has been swapped in, we can only
	 * replace it with another hot spare.
	 */
	if (replacing &&
	    FUNC6(tgt, ZPOOL_CONFIG_IS_SPARE, &val) == 0 &&
	    (FUNC15(zhp, newname, &avail_spare, &l2cache,
	    NULL) == NULL || !avail_spare) &&
	    FUNC3(config_root, tgt, 1)) {
		FUNC13(hdl, FUNC0(TEXT_DOMAIN,
		    "can only be replaced by another hot spare"));
		FUNC2(newname);
		return (FUNC12(hdl, EZFS_BADTARGET, msg));
	}

	FUNC2(newname);

	if (FUNC11(hdl, &zc, nvroot) != 0)
		return (-1);

	ret = FUNC14(hdl, ZFS_IOC_VDEV_ATTACH, &zc);

	FUNC10(&zc);

	if (ret == 0) {
		if (rootpool) {
			/*
			 * XXX need a better way to prevent user from
			 * booting up a half-baked vdev.
			 */
			(void) FUNC1(stderr, "%s", FUNC0(TEXT_DOMAIN, "Make "
			    "sure to wait until resilver is done "
			    "before rebooting.\n"));
		}
		return (0);
	}

	switch (errno) {
	case ENOTSUP:
		/*
		 * Can't attach to or replace this type of vdev.
		 */
		if (replacing) {
			uint64_t version = FUNC17(zhp,
			    ZPOOL_PROP_VERSION, NULL);

			if (islog)
				FUNC13(hdl, FUNC0(TEXT_DOMAIN,
				    "cannot replace a log with a spare"));
			else if (version >= SPA_VERSION_MULTI_REPLACE)
				FUNC13(hdl, FUNC0(TEXT_DOMAIN,
				    "already in replacing/spare config; wait "
				    "for completion or use 'zpool detach'"));
			else
				FUNC13(hdl, FUNC0(TEXT_DOMAIN,
				    "cannot replace a replacing device"));
		} else {
			FUNC13(hdl, FUNC0(TEXT_DOMAIN,
			    "can only attach to mirrors and top-level "
			    "disks"));
		}
		(void) FUNC12(hdl, EZFS_BADTARGET, msg);
		break;

	case EINVAL:
		/*
		 * The new device must be a single disk.
		 */
		FUNC13(hdl, FUNC0(TEXT_DOMAIN,
		    "new device must be a single disk"));
		(void) FUNC12(hdl, EZFS_INVALCONFIG, msg);
		break;

	case EBUSY:
		FUNC13(hdl, FUNC0(TEXT_DOMAIN, "%s is busy, "
		    "or device removal is in progress"),
		    new_disk);
		(void) FUNC12(hdl, EZFS_BADDEV, msg);
		break;

	case EOVERFLOW:
		/*
		 * The new device is too small.
		 */
		FUNC13(hdl, FUNC0(TEXT_DOMAIN,
		    "device is too small"));
		(void) FUNC12(hdl, EZFS_BADDEV, msg);
		break;

	case EDOM:
		/*
		 * The new device has a different optimal sector size.
		 */
		FUNC13(hdl, FUNC0(TEXT_DOMAIN,
		    "new device has a different optimal sector size; use the "
		    "option '-o ashift=N' to override the optimal size"));
		(void) FUNC12(hdl, EZFS_BADDEV, msg);
		break;

	case ENAMETOOLONG:
		/*
		 * The resulting top-level vdev spec won't fit in the label.
		 */
		(void) FUNC12(hdl, EZFS_DEVOVERFLOW, msg);
		break;

	default:
		(void) FUNC19(hdl, errno, msg);
	}

	return (-1);
}