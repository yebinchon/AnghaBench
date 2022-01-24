#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {char* member_0; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_value; } ;
typedef  TYPE_2__ zfs_cmd_t ;
struct TYPE_12__ {scalar_t__ verbose; } ;
typedef  TYPE_3__ recvflags_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  DCP_CMD_FORCE_NEW_KEY ; 
 int EACCES ; 
 int /*<<< orphan*/  ZFS_IOC_PROMOTE ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(libzfs_handle_t *hdl, const char *fsname,
    const char *origin_fsname, recvflags_t *flags)
{
	int err;
	zfs_cmd_t zc = {"\0"};
	zfs_handle_t *zhp = NULL, *ozhp = NULL;

	if (flags->verbose)
		(void) FUNC1("promoting %s\n", fsname);

	(void) FUNC3(zc.zc_value, origin_fsname, sizeof (zc.zc_value));
	(void) FUNC3(zc.zc_name, fsname, sizeof (zc.zc_name));

	/*
	 * Attempt to promote the dataset. If it fails with EACCES the
	 * promotion would cause this dataset to leave its encryption root.
	 * Force the origin to become an encryption root and try again.
	 */
	err = FUNC5(hdl, ZFS_IOC_PROMOTE, &zc);
	if (err == EACCES) {
		zhp = FUNC6(hdl, fsname, ZFS_TYPE_DATASET);
		if (zhp == NULL) {
			err = -1;
			goto out;
		}

		ozhp = FUNC2(zhp);
		if (ozhp == NULL) {
			err = -1;
			goto out;
		}

		err = FUNC0(ozhp->zfs_name, DCP_CMD_FORCE_NEW_KEY,
		    NULL, NULL, 0);
		if (err != 0)
			goto out;

		err = FUNC5(hdl, ZFS_IOC_PROMOTE, &zc);
	}

out:
	if (zhp != NULL)
		FUNC4(zhp);
	if (ozhp != NULL)
		FUNC4(ozhp);

	return (err);
}