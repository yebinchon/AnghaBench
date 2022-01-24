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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODATA ; 
 int ENOENT ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct inode*,char const*,void*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,char const*,void*,size_t) ; 

__attribute__((used)) static int
FUNC6(struct inode *ip, const char *name, void *value, size_t size,
    cred_t *cr)
{
	znode_t *zp = FUNC1(ip);
	zfsvfs_t *zfsvfs = FUNC3(zp);
	int error;

	FUNC0(FUNC2(&zp->z_xattr_lock));

	if (zfsvfs->z_use_sa && zp->z_is_sa) {
		error = FUNC5(ip, name, value, size);
		if (error != -ENOENT)
			goto out;
	}

	error = FUNC4(ip, name, value, size, cr);
out:
	if (error == -ENOENT)
		error = -ENODATA;

	return (error);
}