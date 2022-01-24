#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct inode {TYPE_2__* i_sb; } ;
typedef  int /*<<< orphan*/  pathname_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_4__ {TYPE_1__* s_root; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/ * FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFSCTL_INO_SHARES ; 
 int /*<<< orphan*/  ZFSCTL_INO_SNAPDIR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* ZFS_SHAREDIR_NAME ; 
 char* ZFS_SNAPDIR_NAME ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zpl_fops_shares ; 
 int /*<<< orphan*/  zpl_fops_snapdir ; 
 int /*<<< orphan*/  zpl_ops_shares ; 
 int /*<<< orphan*/  zpl_ops_snapdir ; 

int
FUNC6(struct inode *dip, char *name, struct inode **ipp,
    int flags, cred_t *cr, int *direntflags, pathname_t *realpnp)
{
	zfsvfs_t *zfsvfs = FUNC0(dip);
	int error = 0;

	FUNC2(zfsvfs);

	if (FUNC4(name, "..") == 0) {
		*ipp = dip->i_sb->s_root->d_inode;
	} else if (FUNC4(name, ZFS_SNAPDIR_NAME) == 0) {
		*ipp = FUNC5(zfsvfs, ZFSCTL_INO_SNAPDIR,
		    &zpl_fops_snapdir, &zpl_ops_snapdir);
	} else if (FUNC4(name, ZFS_SHAREDIR_NAME) == 0) {
		*ipp = FUNC5(zfsvfs, ZFSCTL_INO_SHARES,
		    &zpl_fops_shares, &zpl_ops_shares);
	} else {
		*ipp = NULL;
	}

	if (*ipp == NULL)
		error = FUNC1(ENOENT);

	FUNC3(zfsvfs);

	return (error);
}