#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  zfs_name; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct mnttab {char const* mnt_mountp; } ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int MS_CRYPT ; 
 scalar_t__ ZFS_KEYSTATUS_AVAILABLE ; 
 int /*<<< orphan*/  ZFS_PROP_ENCRYPTION ; 
 int /*<<< orphan*/  ZFS_PROP_KEYSTATUS ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ ZIO_CRYPT_OFF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mnttab*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  share_all_proto ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

int
FUNC13(zfs_handle_t *zhp, const char *mountpoint, int flags)
{
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	struct mnttab entry;
	char *mntpt = NULL;
	boolean_t encroot, unmounted = B_FALSE;

	/* check to see if we need to unmount the filesystem */
	if (mountpoint != NULL || ((FUNC6(zhp) == ZFS_TYPE_FILESYSTEM) &&
	    FUNC1(hdl, zhp->zfs_name, &entry) == 0)) {
		/*
		 * mountpoint may have come from a call to
		 * getmnt/getmntany if it isn't NULL. If it is NULL,
		 * we know it comes from libzfs_mnttab_find which can
		 * then get freed later. We strdup it to play it safe.
		 */
		if (mountpoint == NULL)
			mntpt = FUNC11(hdl, entry.mnt_mountp);
		else
			mntpt = FUNC11(hdl, mountpoint);

		/*
		 * Unshare and unmount the filesystem
		 */
		if (FUNC12(zhp, mntpt, share_all_proto) != 0) {
			FUNC0(mntpt);
			return (-1);
		}

		if (FUNC3(hdl, mntpt, flags) != 0) {
			FUNC0(mntpt);
			(void) FUNC10(zhp);
			return (-1);
		}

		FUNC2(hdl, zhp->zfs_name);
		FUNC0(mntpt);
		unmounted = B_TRUE;
	}

	/*
	 * If the MS_CRYPT flag is provided we must ensure we attempt to
	 * unload the dataset's key regardless of whether we did any work
	 * to unmount it. We only do this for encryption roots.
	 */
	if ((flags & MS_CRYPT) != 0 &&
	    FUNC8(zhp, ZFS_PROP_ENCRYPTION) != ZIO_CRYPT_OFF) {
		FUNC9(zhp);

		if (FUNC4(zhp, &encroot, NULL) != 0 &&
		    unmounted) {
			(void) FUNC7(zhp, NULL, 0);
			return (-1);
		}

		if (encroot && FUNC8(zhp, ZFS_PROP_KEYSTATUS) ==
		    ZFS_KEYSTATUS_AVAILABLE &&
		    FUNC5(zhp) != 0) {
			(void) FUNC7(zhp, NULL, 0);
			return (-1);
		}
	}

	return (0);
}