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
typedef  int /*<<< orphan*/  zfs_type_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ ZFS_CANMOUNT_ON ; 
 int /*<<< orphan*/  ZFS_PROP_CANMOUNT ; 
 scalar_t__ ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 () ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(libzfs_handle_t *hdl, const char *dataset, zfs_type_t type)
{
	zfs_handle_t *zhp = NULL;
	int ret = 0;

	zhp = FUNC6(hdl, dataset, type);
	if (zhp == NULL)
		return (1);

	/*
	 * Volumes may neither be mounted or shared.  Potentially in the
	 * future filesystems detected on these volumes could be mounted.
	 */
	if (FUNC4(zhp) == ZFS_TYPE_VOLUME) {
		FUNC3(zhp);
		return (0);
	}

	/*
	 * Mount and/or share the new filesystem as appropriate.  We provide a
	 * verbose error message to let the user know that their filesystem was
	 * in fact created, even if we failed to mount or share it.
	 *
	 * If the user doesn't want the dataset automatically mounted, then
	 * skip the mount/share step
	 */
	if (FUNC8(ZFS_PROP_CANMOUNT, type, B_FALSE) &&
	    FUNC7(zhp, ZFS_PROP_CANMOUNT) == ZFS_CANMOUNT_ON) {
		if (FUNC1() != 0) {
			(void) FUNC0(stderr, "%s", FUNC2("filesystem "
			    "successfully created, but it may only be "
			    "mounted by root\n"));
			ret = 1;
		} else if (FUNC5(zhp, NULL, 0) != 0) {
			(void) FUNC0(stderr, "%s", FUNC2("filesystem "
			    "successfully created, but not mounted\n"));
			ret = 1;
		} else if (FUNC9(zhp) != 0) {
			(void) FUNC0(stderr, "%s", FUNC2("filesystem "
			    "successfully created, but not shared\n"));
			ret = 1;
		}
	}

	FUNC3(zhp);

	return (ret);
}