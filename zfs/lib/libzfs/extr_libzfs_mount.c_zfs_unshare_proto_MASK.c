#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_share_proto_t ;
struct TYPE_5__ {int /*<<< orphan*/  zfs_name; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct mnttab {char const* mnt_mountp; } ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 scalar_t__ PROTO_END ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mnttab*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char const*) ; 

int
FUNC7(zfs_handle_t *zhp, const char *mountpoint,
    zfs_share_proto_t *proto)
{
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	struct mnttab entry;
	char *mntpt = NULL;

	/* check to see if need to unmount the filesystem */
	if (mountpoint != NULL)
		mntpt = FUNC6(hdl, mountpoint);

	if (mountpoint != NULL || ((FUNC5(zhp) == ZFS_TYPE_FILESYSTEM) &&
	    FUNC2(hdl, FUNC4(zhp), &entry) == 0)) {
		zfs_share_proto_t *curr_proto;

		if (mountpoint == NULL)
			mntpt = FUNC6(zhp->zfs_hdl, entry.mnt_mountp);

		for (curr_proto = proto; *curr_proto != PROTO_END;
		    curr_proto++) {

			if (FUNC1(hdl, mntpt, *curr_proto) &&
			    FUNC3(hdl, zhp->zfs_name,
			    mntpt, *curr_proto) != 0) {
				if (mntpt != NULL)
					FUNC0(mntpt);
				return (-1);
			}
		}
	}
	if (mntpt != NULL)
		FUNC0(mntpt);

	return (0);
}