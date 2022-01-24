#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* se_path; } ;
typedef  TYPE_1__ zfs_snapentry_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOENT ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  RW_READER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UMH_WAIT_PROC ; 
 int FUNC1 (char*,char**,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_snapshot_lock ; 
 TYPE_1__* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int
FUNC7(char *snapname, int flags)
{
	char *argv[] = { "/usr/bin/env", "umount", "-t", "zfs", "-n", NULL,
	    NULL };
	char *envp[] = { NULL };
	zfs_snapentry_t *se;
	int error;

	FUNC3(&zfs_snapshot_lock, RW_READER);
	if ((se = FUNC5(snapname)) == NULL) {
		FUNC4(&zfs_snapshot_lock);
		return (FUNC0(ENOENT));
	}
	FUNC4(&zfs_snapshot_lock);

	if (flags & MNT_FORCE)
		argv[4] = "-fn";
	argv[5] = se->se_path;
	FUNC2("unmount; path=%s\n", se->se_path);
	error = FUNC1(argv[0], argv, envp, UMH_WAIT_PROC);
	FUNC6(se);


	/*
	 * The umount system utility will return 256 on error.  We must
	 * assume this error is because the file system is busy so it is
	 * converted to the more sensible EBUSY.
	 */
	if (error)
		error = FUNC0(EBUSY);

	return (error);
}