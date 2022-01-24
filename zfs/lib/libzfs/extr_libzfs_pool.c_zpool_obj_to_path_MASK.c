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
struct TYPE_5__ {char* zpool_name; int /*<<< orphan*/  zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_6__ {char* member_0; char* zc_name; char* zc_value; scalar_t__ zc_obj; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;
typedef  char* longlong_t ;
typedef  int /*<<< orphan*/  dsname ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  ZFS_IOC_DSOBJ_TO_DSNAME ; 
 int /*<<< orphan*/  ZFS_IOC_OBJ_TO_PATH ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC5(zpool_handle_t *zhp, uint64_t dsobj, uint64_t obj,
    char *pathname, size_t len)
{
	zfs_cmd_t zc = {"\0"};
	boolean_t mounted = B_FALSE;
	char *mntpnt = NULL;
	char dsname[ZFS_MAX_DATASET_NAME_LEN];

	if (dsobj == 0) {
		/* special case for the MOS */
		(void) FUNC2(pathname, len, "<metadata>:<0x%llx>",
		    (longlong_t)obj);
		return;
	}

	/* get the dataset's name */
	(void) FUNC3(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
	zc.zc_obj = dsobj;
	if (FUNC4(zhp->zpool_hdl,
	    ZFS_IOC_DSOBJ_TO_DSNAME, &zc) != 0) {
		/* just write out a path of two object numbers */
		(void) FUNC2(pathname, len, "<0x%llx>:<0x%llx>",
		    (longlong_t)dsobj, (longlong_t)obj);
		return;
	}
	(void) FUNC3(dsname, zc.zc_value, sizeof (dsname));

	/* find out if the dataset is mounted */
	mounted = FUNC1(zhp->zpool_hdl, dsname, &mntpnt);

	/* get the corrupted object's path */
	(void) FUNC3(zc.zc_name, dsname, sizeof (zc.zc_name));
	zc.zc_obj = obj;
	if (FUNC4(zhp->zpool_hdl, ZFS_IOC_OBJ_TO_PATH,
	    &zc) == 0) {
		if (mounted) {
			(void) FUNC2(pathname, len, "%s%s", mntpnt,
			    zc.zc_value);
		} else {
			(void) FUNC2(pathname, len, "%s:%s",
			    dsname, zc.zc_value);
		}
	} else {
		(void) FUNC2(pathname, len, "%s:<0x%llx>", dsname,
		    (longlong_t)obj);
	}
	FUNC0(mntpnt);
}