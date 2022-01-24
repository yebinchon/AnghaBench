#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  znode_t ;
struct TYPE_6__ {scalar_t__ z_shares_dir; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  pathname_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUP ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,struct inode**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ **) ; 

int
FUNC8(struct inode *dip, char *name, struct inode **ipp,
    int flags, cred_t *cr, int *direntflags, pathname_t *realpnp)
{
	zfsvfs_t *zfsvfs = FUNC0(dip);
	struct inode *ip;
	znode_t *dzp;
	int error;

	FUNC2(zfsvfs);

	if (zfsvfs->z_shares_dir == 0) {
		FUNC3(zfsvfs);
		return (FUNC1(ENOTSUP));
	}

	if ((error = FUNC7(zfsvfs, zfsvfs->z_shares_dir, &dzp)) == 0) {
		error = FUNC6(FUNC4(dzp), name, &ip, 0, cr, NULL, NULL);
		FUNC5(FUNC4(dzp));
	}

	FUNC3(zfsvfs);

	return (error);
}