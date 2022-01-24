#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  z_xattr_lock; scalar_t__ z_is_sa; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_13__ {scalar_t__ z_use_sa; } ;
typedef  TYPE_2__ zfsvfs_t ;
struct TYPE_14__ {size_t member_0; char* member_2; int offset; struct dentry* member_3; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_3__ xattr_filldir_t ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_3__*) ; 

ssize_t
FUNC14(struct dentry *dentry, char *buffer, size_t buffer_size)
{
	znode_t *zp = FUNC1(dentry->d_inode);
	zfsvfs_t *zfsvfs = FUNC5(zp);
	xattr_filldir_t xf = { buffer_size, 0, buffer, dentry };
	cred_t *cr = FUNC0();
	fstrans_cookie_t cookie;
	int error = 0;

	FUNC7(cr);
	cookie = FUNC10();
	FUNC2(zfsvfs);
	FUNC4(zp);
	FUNC8(&zp->z_xattr_lock, RW_READER);

	if (zfsvfs->z_use_sa && zp->z_is_sa) {
		error = FUNC13(&xf);
		if (error)
			goto out;
	}

	error = FUNC12(&xf, cr);
	if (error)
		goto out;

	error = xf.offset;
out:

	FUNC9(&zp->z_xattr_lock);
	FUNC3(zfsvfs);
	FUNC11(cookie);
	FUNC6(cr);

	return (error);
}