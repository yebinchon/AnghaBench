#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int z_pflags; scalar_t__ z_size; int /*<<< orphan*/  z_sync_cnt; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_10__ {scalar_t__ z_vscan; } ;
typedef  TYPE_2__ zfsvfs_t ;
struct inode {int /*<<< orphan*/  i_mode; } ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int O_SYNC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ZFS_AV_QUARANTINED ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (struct inode*,int /*<<< orphan*/ *,int) ; 

int
FUNC10(struct inode *ip, int flag, cred_t *cr)
{
	znode_t	*zp = FUNC0(ip);
	zfsvfs_t *zfsvfs = FUNC1(ip);

	FUNC4(zfsvfs);
	FUNC6(zp);

	/* Decrement the synchronous opens in the znode */
	if (flag & O_SYNC)
		FUNC7(&zp->z_sync_cnt);

	if (!FUNC8(zp) && zfsvfs->z_vscan && FUNC2(ip->i_mode) &&
	    !(zp->z_pflags & ZFS_AV_QUARANTINED) && zp->z_size > 0)
		FUNC3(FUNC9(ip, cr, 1) == 0);

	FUNC5(zfsvfs);
	return (0);
}