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
typedef  int /*<<< orphan*/  znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_dirlock_t ;
struct TYPE_3__ {int va_mask; int va_mode; int /*<<< orphan*/ * va_dentry; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; } ;
typedef  TYPE_1__ vattr_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_UID ; 
 int CREATE_XATTR_DIR ; 
 int /*<<< orphan*/  ENOENT ; 
 int ERESTART ; 
 int /*<<< orphan*/  EROFS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int S_IFDIR ; 
 int S_ISVTX ; 
 struct inode* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ZXATTR ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,struct inode**,int /*<<< orphan*/ *) ; 

int
FUNC8(znode_t *zp, struct inode **xipp, cred_t *cr, int flags)
{
	zfsvfs_t	*zfsvfs = FUNC2(zp);
	znode_t		*xzp;
	zfs_dirlock_t	*dl;
	vattr_t		va;
	int		error;
top:
	error = FUNC3(&dl, zp, "", &xzp, ZXATTR, NULL, NULL);
	if (error)
		return (error);

	if (xzp != NULL) {
		*xipp = FUNC1(xzp);
		FUNC4(dl);
		return (0);
	}

	if (!(flags & CREATE_XATTR_DIR)) {
		FUNC4(dl);
		return (FUNC0(ENOENT));
	}

	if (FUNC6(zfsvfs)) {
		FUNC4(dl);
		return (FUNC0(EROFS));
	}

	/*
	 * The ability to 'create' files in an attribute
	 * directory comes from the write_xattr permission on the base file.
	 *
	 * The ability to 'search' an attribute directory requires
	 * read_xattr permission on the base file.
	 *
	 * Once in a directory the ability to read/write attributes
	 * is controlled by the permissions on the attribute file.
	 */
	va.va_mask = ATTR_MODE | ATTR_UID | ATTR_GID;
	va.va_mode = S_IFDIR | S_ISVTX | 0777;
	FUNC5(zp, cr, &va.va_uid, &va.va_gid);

	va.va_dentry = NULL;
	error = FUNC7(zp, &va, xipp, cr);
	FUNC4(dl);

	if (error == ERESTART) {
		/* NB: we already did dmu_tx_wait() if necessary */
		goto top;
	}

	return (error);
}