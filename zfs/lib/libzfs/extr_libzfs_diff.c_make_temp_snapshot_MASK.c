#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* member_0; int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_cleanup_fd; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  tmpsnap; int /*<<< orphan*/  ds; int /*<<< orphan*/  tosnap; int /*<<< orphan*/  errbuf; int /*<<< orphan*/  cleanupfd; TYPE_1__* zhp; } ;
typedef  TYPE_3__ differ_info_t ;
struct TYPE_6__ {int /*<<< orphan*/ * zfs_hdl; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  EZFS_DIFF ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* ZDIFF_PREFIX ; 
 int /*<<< orphan*/  ZFS_IOC_TMP_SNAPSHOT ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(differ_info_t *di)
{
	libzfs_handle_t *hdl = di->zhp->zfs_hdl;
	zfs_cmd_t zc = {"\0"};

	(void) FUNC2(zc.zc_value, sizeof (zc.zc_value),
	    ZDIFF_PREFIX, FUNC1());
	(void) FUNC3(zc.zc_name, di->ds, sizeof (zc.zc_name));
	zc.zc_cleanup_fd = di->cleanupfd;

	if (FUNC6(hdl, ZFS_IOC_TMP_SNAPSHOT, &zc) != 0) {
		int err = errno;
		if (err == EPERM) {
			(void) FUNC2(di->errbuf, sizeof (di->errbuf),
			    FUNC0(TEXT_DOMAIN, "The diff delegated "
			    "permission is needed in order\nto create a "
			    "just-in-time snapshot for diffing\n"));
			return (FUNC5(hdl, EZFS_DIFF, di->errbuf));
		} else {
			(void) FUNC2(di->errbuf, sizeof (di->errbuf),
			    FUNC0(TEXT_DOMAIN, "Cannot create just-in-time "
			    "snapshot of '%s'"), zc.zc_name);
			return (FUNC7(hdl, err, di->errbuf));
		}
	}

	di->tmpsnap = FUNC8(hdl, zc.zc_value);
	di->tosnap = FUNC4(hdl, "%s@%s", di->ds, di->tmpsnap);
	return (0);
}