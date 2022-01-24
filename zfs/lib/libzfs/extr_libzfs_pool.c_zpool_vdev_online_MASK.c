#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_8__ {char* member_0; int zc_obj; int /*<<< orphan*/  zc_cookie; scalar_t__ zc_guid; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  vdev_state_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  EZFS_ISSPARE ; 
 int /*<<< orphan*/  EZFS_NODEVICE ; 
 int /*<<< orphan*/  EZFS_POSTSPLIT_ONLINE ; 
 int /*<<< orphan*/  EZFS_VDEVNOTSUP ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  VDEV_STATE_ONLINE ; 
 int /*<<< orphan*/  ZFS_IOC_VDEV_SET_STATE ; 
 int ZFS_ONLINE_EXPAND ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_WHOLE_DISK ; 
 int /*<<< orphan*/  ZPOOL_PROP_AUTOEXPAND ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC9 (char const*,char*,int) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*,char const*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,char const*,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,char*) ; 

int
FUNC14(zpool_handle_t *zhp, const char *path, int flags,
    vdev_state_t *newstate)
{
	zfs_cmd_t zc = {"\0"};
	char msg[1024];
	char *pathname;
	nvlist_t *tgt;
	boolean_t avail_spare, l2cache, islog;
	libzfs_handle_t *hdl = zhp->zpool_hdl;
	int error;

	if (flags & ZFS_ONLINE_EXPAND) {
		(void) FUNC3(msg, sizeof (msg),
		    FUNC0(TEXT_DOMAIN, "cannot expand %s"), path);
	} else {
		(void) FUNC3(msg, sizeof (msg),
		    FUNC0(TEXT_DOMAIN, "cannot online %s"), path);
	}

	(void) FUNC4(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	if ((tgt = FUNC10(zhp, path, &avail_spare, &l2cache,
	    &islog)) == NULL)
		return (FUNC6(hdl, EZFS_NODEVICE, msg));

	FUNC5(FUNC2(tgt, ZPOOL_CONFIG_GUID, &zc.zc_guid) == 0);

	if (avail_spare)
		return (FUNC6(hdl, EZFS_ISSPARE, msg));

	if ((flags & ZFS_ONLINE_EXPAND ||
	    FUNC11(zhp, ZPOOL_PROP_AUTOEXPAND, NULL)) &&
	    FUNC1(tgt, ZPOOL_CONFIG_PATH, &pathname) == 0) {
		uint64_t wholedisk = 0;

		(void) FUNC2(tgt, ZPOOL_CONFIG_WHOLE_DISK,
		    &wholedisk);

		/*
		 * XXX - L2ARC 1.0 devices can't support expansion.
		 */
		if (l2cache) {
			FUNC7(hdl, FUNC0(TEXT_DOMAIN,
			    "cannot expand cache devices"));
			return (FUNC6(hdl, EZFS_VDEVNOTSUP, msg));
		}

		if (wholedisk) {
			const char *fullpath = path;
			char buf[MAXPATHLEN];

			if (path[0] != '/') {
				error = FUNC9(path, buf,
				    sizeof (buf));
				if (error != 0)
					return (FUNC6(hdl, EZFS_NODEVICE,
					    msg));

				fullpath = buf;
			}

			error = FUNC12(hdl, fullpath, msg);
			if (error != 0)
				return (error);
		}
	}

	zc.zc_cookie = VDEV_STATE_ONLINE;
	zc.zc_obj = flags;

	if (FUNC8(hdl, ZFS_IOC_VDEV_SET_STATE, &zc) != 0) {
		if (errno == EINVAL) {
			FUNC7(hdl, FUNC0(TEXT_DOMAIN, "was split "
			    "from this pool into a new one.  Use '%s' "
			    "instead"), "zpool detach");
			return (FUNC6(hdl, EZFS_POSTSPLIT_ONLINE, msg));
		}
		return (FUNC13(hdl, errno, msg));
	}

	*newstate = zc.zc_cookie;
	return (0);
}