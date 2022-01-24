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
struct mntent {char* mnt_fsname; char* mnt_dir; char* mnt_type; char* mnt_opts; scalar_t__ mnt_passno; scalar_t__ mnt_freq; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MOUNT_FILEIO ; 
 int MOUNT_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct mntent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC5(char *dataset, char *mntpoint, char *type, char *mntopts)
{
	struct mntent mnt;
	FILE *fp;
	int error;

	mnt.mnt_fsname = dataset;
	mnt.mnt_dir = mntpoint;
	mnt.mnt_type = type;
	mnt.mnt_opts = mntopts ? mntopts : "";
	mnt.mnt_freq = 0;
	mnt.mnt_passno = 0;

	fp = FUNC4("/etc/mtab", "a+");
	if (!fp) {
		(void) FUNC2(stderr, FUNC3(
		    "filesystem '%s' was mounted, but /etc/mtab "
		    "could not be opened due to error %d\n"),
		    dataset, errno);
		return (MOUNT_FILEIO);
	}

	error = FUNC0(fp, &mnt);
	if (error) {
		(void) FUNC2(stderr, FUNC3(
		    "filesystem '%s' was mounted, but /etc/mtab "
		    "could not be updated due to error %d\n"),
		    dataset, errno);
		return (MOUNT_FILEIO);
	}

	(void) FUNC1(fp);

	return (MOUNT_SUCCESS);
}