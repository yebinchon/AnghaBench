#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* z_vfs; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct TYPE_11__ {int /*<<< orphan*/  mnt_data; } ;
typedef  TYPE_2__ zfs_mnt_t ;
struct TYPE_12__ {TYPE_1__* vfs_data; } ;
typedef  TYPE_3__ vfs_t ;
struct super_block {TYPE_1__* s_fs_info; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EROFS ; 
 int SB_RDONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

int
FUNC10(struct super_block *sb, int *flags, zfs_mnt_t *zm)
{
	zfsvfs_t *zfsvfs = sb->s_fs_info;
	vfs_t *vfsp;
	boolean_t issnap = FUNC0(zfsvfs->z_os);
	int error;

	if ((issnap || !FUNC3(FUNC2(zfsvfs->z_os))) &&
	    !(*flags & SB_RDONLY)) {
		*flags |= SB_RDONLY;
		return (EROFS);
	}

	error = FUNC8(zm->mnt_data, &vfsp);
	if (error)
		return (error);

	if (!FUNC5(zfsvfs) && (*flags & SB_RDONLY))
		FUNC4(FUNC1(zfsvfs->z_os), 0);

	FUNC7(zfsvfs);
	FUNC9(zfsvfs->z_vfs);

	vfsp->vfs_data = zfsvfs;
	zfsvfs->z_vfs = vfsp;
	if (!issnap)
		(void) FUNC6(vfsp);

	return (error);
}