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
typedef  int /*<<< orphan*/  zfs_type_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct stat64 {int dummy; } ;
struct extmnttab {char* mnt_special; int /*<<< orphan*/  mnt_fstype; } ;
struct TYPE_4__ {int /*<<< orphan*/  libzfs_mnttab; } ;
typedef  TYPE_1__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MNTTAB ; 
 int /*<<< orphan*/  MNTTYPE_ZFS ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,struct extmnttab*,struct stat64*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

zfs_handle_t *
FUNC8(libzfs_handle_t *hdl, char *path, zfs_type_t argtype)
{
	struct stat64 statbuf;
	struct extmnttab entry;

	if (path[0] != '/' && FUNC6(path, "./", FUNC5("./")) != 0) {
		/*
		 * It's not a valid path, assume it's a name of type 'argtype'.
		 */
		return (FUNC7(hdl, path, argtype));
	}

	/* Reopen MNTTAB to prevent reading stale data from open file */
	if (FUNC1(MNTTAB, "r", hdl->libzfs_mnttab) == NULL)
		return (NULL);

	if (FUNC2(path, &entry, &statbuf) != 0)
		return (NULL);

	if (FUNC4(entry.mnt_fstype, MNTTYPE_ZFS) != 0) {
		(void) FUNC0(stderr, FUNC3("'%s': not a ZFS filesystem\n"),
		    path);
		return (NULL);
	}

	return (FUNC7(hdl, entry.mnt_special, ZFS_TYPE_FILESYSTEM));
}