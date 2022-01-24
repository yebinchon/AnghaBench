#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_3__ {scalar_t__ cb_numattempted; scalar_t__ cb_numfailed; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ loadkey_cbdata_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int ENOENT ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_VOLUME ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

int
FUNC6(libzfs_handle_t *hdl, char *fsname)
{
	int ret;
	zfs_handle_t *zhp = NULL;
	loadkey_cbdata_t cb = { 0 };

	zhp = FUNC5(hdl, fsname, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
	if (zhp == NULL) {
		ret = ENOENT;
		goto error;
	}

	ret = FUNC1(FUNC4(zhp), &cb);
	if (ret)
		goto error;

	(void) FUNC2(FUNC0("%llu / %llu keys successfully loaded\n"),
	    (u_longlong_t)(cb.cb_numattempted - cb.cb_numfailed),
	    (u_longlong_t)cb.cb_numattempted);

	if (cb.cb_numfailed != 0) {
		ret = -1;
		goto error;
	}

	FUNC3(zhp);
	return (0);

error:
	if (zhp != NULL)
		FUNC3(zhp);
	return (ret);
}