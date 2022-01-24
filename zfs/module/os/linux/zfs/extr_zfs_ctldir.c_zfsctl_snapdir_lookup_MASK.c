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
struct TYPE_6__ {int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  scalar_t__ uint64_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  pathname_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZFSCTL_INO_SNAPDIRS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 struct inode* FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC6(struct inode *dip, char *name, struct inode **ipp,
    int flags, cred_t *cr, int *direntflags, pathname_t *realpnp)
{
	zfsvfs_t *zfsvfs = FUNC0(dip);
	uint64_t id;
	int error;

	FUNC2(zfsvfs);

	error = FUNC4(zfsvfs->z_os, name, &id);
	if (error) {
		FUNC3(zfsvfs);
		return (error);
	}

	*ipp = FUNC5(zfsvfs, ZFSCTL_INO_SNAPDIRS - id,
	    &simple_dir_operations, &simple_dir_inode_operations);
	if (*ipp == NULL)
		error = FUNC1(ENOENT);

	FUNC3(zfsvfs);

	return (error);
}