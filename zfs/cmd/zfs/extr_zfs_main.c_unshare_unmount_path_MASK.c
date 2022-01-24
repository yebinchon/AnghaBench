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
struct stat64 {scalar_t__ st_ino; } ;
struct extmnttab {char* mnt_fstype; int /*<<< orphan*/  mnt_mountp; int /*<<< orphan*/  mnt_special; } ;
typedef  int /*<<< orphan*/  smbshare_prop ;
typedef  int /*<<< orphan*/  nfs_mnt_prop ;
typedef  int /*<<< orphan*/  mtpt_prop ;
typedef  scalar_t__ ino_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ENOENT ; 
 int /*<<< orphan*/  MNTTAB ; 
 char* MNTTYPE_ZFS ; 
 int OP_SHARE ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  ZFS_PROP_SHARENFS ; 
 int /*<<< orphan*/  ZFS_PROP_SHARESMB ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_zfs ; 
 scalar_t__ FUNC2 (char*,struct extmnttab*,struct stat64*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  mnttab_file ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat64*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC17(int op, char *path, int flags, boolean_t is_manual)
{
	zfs_handle_t *zhp;
	int ret = 0;
	struct stat64 statbuf;
	struct extmnttab entry;
	const char *cmdname = (op == OP_SHARE) ? "unshare" : "unmount";
	ino_t path_inode;


	/*
	 * Search for the given (major,minor) pair in the mount table.
	 */

	/* Reopen MNTTAB to prevent reading stale data from open file */
	if (FUNC1(MNTTAB, "r", mnttab_file) == NULL)
		return (ENOENT);

	if (FUNC2(path, &entry, &statbuf) != 0) {
		if (op == OP_SHARE) {
			(void) FUNC0(stderr, FUNC3("cannot %s '%s': not "
			    "currently mounted\n"), cmdname, path);
			return (1);
		}
		(void) FUNC0(stderr, FUNC3("warning: %s not in"
		    "/proc/self/mounts\n"), path);
		if ((ret = FUNC7(path, flags)) != 0)
			(void) FUNC0(stderr, FUNC3("%s: %s\n"), path,
			    FUNC6(errno));
		return (ret != 0);
	}
	path_inode = statbuf.st_ino;

	if (FUNC5(entry.mnt_fstype, MNTTYPE_ZFS) != 0) {
		(void) FUNC0(stderr, FUNC3("cannot %s '%s': not a ZFS "
		    "filesystem\n"), cmdname, path);
		return (1);
	}

	if ((zhp = FUNC12(g_zfs, entry.mnt_special,
	    ZFS_TYPE_FILESYSTEM)) == NULL)
		return (1);

	ret = 1;
	if (FUNC4(entry.mnt_mountp, &statbuf) != 0) {
		(void) FUNC0(stderr, FUNC3("cannot %s '%s': %s\n"),
		    cmdname, path, FUNC6(errno));
		goto out;
	} else if (statbuf.st_ino != path_inode) {
		(void) FUNC0(stderr, FUNC3("cannot "
		    "%s '%s': not a mountpoint\n"), cmdname, path);
		goto out;
	}

	if (op == OP_SHARE) {
		char nfs_mnt_prop[ZFS_MAXPROPLEN];
		char smbshare_prop[ZFS_MAXPROPLEN];

		FUNC8(FUNC13(zhp, ZFS_PROP_SHARENFS, nfs_mnt_prop,
		    sizeof (nfs_mnt_prop), NULL, NULL, 0, B_FALSE) == 0);
		FUNC8(FUNC13(zhp, ZFS_PROP_SHARESMB, smbshare_prop,
		    sizeof (smbshare_prop), NULL, NULL, 0, B_FALSE) == 0);

		if (FUNC5(nfs_mnt_prop, "off") == 0 &&
		    FUNC5(smbshare_prop, "off") == 0) {
			(void) FUNC0(stderr, FUNC3("cannot unshare "
			    "'%s': legacy share\n"), path);
			(void) FUNC0(stderr, "%s", FUNC3("use exportfs(8) "
			    "or smbcontrol(1) to unshare this filesystem\n"));
		} else if (!FUNC11(zhp)) {
			(void) FUNC0(stderr, FUNC3("cannot unshare '%s': "
			    "not currently shared\n"), path);
		} else {
			ret = FUNC16(zhp, path);
		}
	} else {
		char mtpt_prop[ZFS_MAXPROPLEN];

		FUNC8(FUNC13(zhp, ZFS_PROP_MOUNTPOINT, mtpt_prop,
		    sizeof (mtpt_prop), NULL, NULL, 0, B_FALSE) == 0);

		if (is_manual) {
			ret = FUNC14(zhp, NULL, flags);
		} else if (FUNC5(mtpt_prop, "legacy") == 0) {
			(void) FUNC0(stderr, FUNC3("cannot unmount "
			    "'%s': legacy mountpoint\n"),
			    FUNC10(zhp));
			(void) FUNC0(stderr, "%s", FUNC3("use umount(8) "
			    "to unmount this filesystem\n"));
		} else {
			ret = FUNC15(zhp, flags);
		}
	}

out:
	FUNC9(zhp);

	return (ret != 0);
}