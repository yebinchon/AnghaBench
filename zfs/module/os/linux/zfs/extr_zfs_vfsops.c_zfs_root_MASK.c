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
struct TYPE_6__ {int /*<<< orphan*/  z_root; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

int
FUNC4(zfsvfs_t *zfsvfs, struct inode **ipp)
{
	znode_t *rootzp;
	int error;

	FUNC0(zfsvfs);

	error = FUNC3(zfsvfs, zfsvfs->z_root, &rootzp);
	if (error == 0)
		*ipp = FUNC2(rootzp);

	FUNC1(zfsvfs);
	return (error);
}