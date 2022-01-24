#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_type_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_2__ {char* proto; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ update_cookie_t ;
typedef  int /*<<< orphan*/  shareopts ;
typedef  int /*<<< orphan*/  mountpoint ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  ZFS_PROP_SHARENFS ; 
 int /*<<< orphan*/  ZFS_PROP_SHARESMB ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(zfs_handle_t *zhp, void *pcookie)
{
	update_cookie_t *udata = (update_cookie_t *)pcookie;
	char mountpoint[ZFS_MAXPROPLEN];
	char shareopts[ZFS_MAXPROPLEN];
	char *dataset;
	zfs_type_t type = FUNC4(zhp);

	if (type == ZFS_TYPE_FILESYSTEM &&
	    FUNC6(zhp, update_zfs_shares_cb, pcookie) != 0) {
		FUNC2(zhp);
		return (1);
	}

	if (type != ZFS_TYPE_FILESYSTEM) {
		FUNC2(zhp);
		return (0);
	}

	if (FUNC7(zhp, ZFS_PROP_MOUNTPOINT, mountpoint,
	    sizeof (mountpoint), NULL, NULL, 0, B_FALSE) != 0) {
		FUNC2(zhp);
		return (0);
	}

	dataset = (char *)FUNC3(zhp);

	if (dataset == NULL) {
		FUNC2(zhp);
		return (0);
	}

	if (!FUNC5(zhp, NULL)) {
		FUNC2(zhp);
		return (0);
	}

	if ((udata->proto == NULL || FUNC1(udata->proto, "nfs") == 0) &&
	    FUNC7(zhp, ZFS_PROP_SHARENFS, shareopts,
	    sizeof (shareopts), NULL, NULL, 0, B_FALSE) == 0 &&
	    FUNC1(shareopts, "off") != 0) {
		(void) FUNC0(udata->handle, NULL, mountpoint, NULL,
		    "nfs", shareopts, NULL, dataset, B_FALSE);
	}

	if ((udata->proto == NULL || FUNC1(udata->proto, "smb") == 0) &&
	    FUNC7(zhp, ZFS_PROP_SHARESMB, shareopts,
	    sizeof (shareopts), NULL, NULL, 0, B_FALSE) == 0 &&
	    FUNC1(shareopts, "off") != 0) {
		(void) FUNC0(udata->handle, NULL, mountpoint, NULL,
		    "smb", shareopts, NULL, dataset, B_FALSE);
	}

	FUNC2(zhp);

	return (0);
}