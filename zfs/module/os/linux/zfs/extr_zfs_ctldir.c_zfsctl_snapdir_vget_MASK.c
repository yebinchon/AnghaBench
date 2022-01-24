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
typedef  scalar_t__ uint64_t ;
struct super_block {int /*<<< orphan*/  s_fs_info; } ;
struct path {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int LOOKUP_DIRECTORY ; 
 int LOOKUP_FOLLOW ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZFSCTL_INO_SNAPDIRS ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (char*,int,struct path*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct path*) ; 
 int FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char*) ; 

int
FUNC13(struct super_block *sb, uint64_t objsetid, int gen,
    struct inode **ipp)
{
	int error;
	struct path path;
	char *mnt;
	struct dentry *dentry;

	mnt = FUNC9(MAXPATHLEN, KM_SLEEP);

	error = FUNC12(sb->s_fs_info, objsetid,
	    MAXPATHLEN, mnt);
	if (error)
		goto out;

	/* Trigger automount */
	error = -FUNC8(mnt, LOOKUP_FOLLOW|LOOKUP_DIRECTORY, &path);
	if (error)
		goto out;

	FUNC11(&path);
	/*
	 * Get the snapdir inode. Note, we don't want to use the above
	 * path because it contains the root of the snapshot rather
	 * than the snapdir.
	 */
	*ipp = FUNC6(sb, ZFSCTL_INO_SNAPDIRS - objsetid);
	if (*ipp == NULL) {
		error = FUNC1(ENOENT);
		goto out;
	}

	/* check gen, see zfsctl_snapdir_fid */
	dentry = FUNC3(FUNC5(*ipp));
	if (gen != (!FUNC0(dentry) && FUNC2(dentry))) {
		FUNC7(*ipp);
		*ipp = NULL;
		error = FUNC1(ENOENT);
	}
	if (!FUNC0(dentry))
		FUNC4(dentry);
out:
	FUNC10(mnt, MAXPATHLEN);
	return (error);
}