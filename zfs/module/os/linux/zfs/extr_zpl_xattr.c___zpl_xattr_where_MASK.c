#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ z_is_sa; int /*<<< orphan*/  z_xattr_lock; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_7__ {scalar_t__ z_use_sa; } ;
typedef  TYPE_2__ zfsvfs_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  CE_WARN ; 
 int ENODATA ; 
 int ENOENT ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 int XATTR_IN_DIR ; 
 int XATTR_IN_SA ; 
 int XATTR_NOENT ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct inode*,char const*) ; 
 int FUNC5 (struct inode*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct inode *ip, const char *name, int *where, cred_t *cr)
{
	znode_t *zp = FUNC1(ip);
	zfsvfs_t *zfsvfs = FUNC3(zp);
	int error;

	FUNC0(where);
	FUNC0(FUNC2(&zp->z_xattr_lock));

	*where = XATTR_NOENT;
	if (zfsvfs->z_use_sa && zp->z_is_sa) {
		error = FUNC6(ip, name, NULL, 0);
		if (error >= 0)
			*where |= XATTR_IN_SA;
		else if (error != -ENOENT)
			return (error);
	}

	error = FUNC5(ip, name, NULL, 0, cr);
	if (error >= 0)
		*where |= XATTR_IN_DIR;
	else if (error != -ENOENT)
		return (error);

	if (*where == (XATTR_IN_SA|XATTR_IN_DIR))
		FUNC4(CE_WARN, "ZFS: inode %p has xattr \"%s\""
		    " in both SA and dir", ip, name);
	if (*where == XATTR_NOENT)
		error = -ENODATA;
	else
		error = 0;
	return (error);
}