#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_PROP_VERSION ; 
 int ZPL_VERSION ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(zfs_handle_t *zhp, void *unsupp_fs)
{
	int zfs_version = (int)FUNC5(zhp, ZFS_PROP_VERSION);
	int *count = (int *)unsupp_fs;

	if (zfs_version > ZPL_VERSION) {
		(void) FUNC1(FUNC0("%s (v%d) is not supported by this "
		    "implementation of ZFS.\n"),
		    FUNC3(zhp), zfs_version);
		(*count)++;
	}

	FUNC4(zhp, check_unsupp_fs, unsupp_fs);

	FUNC2(zhp);

	return (0);
}