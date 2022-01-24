#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int z_mode; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_12__ {scalar_t__ z_replay; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_13__ {int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_WRITE_DATA ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int S_ISVTX ; 
 int /*<<< orphan*/  ZFS_OWNER ; 
 TYPE_9__* FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(znode_t *zdp, znode_t *zp, cred_t *cr)
{
	uid_t		uid;
	uid_t		downer;
	uid_t		fowner;
	zfsvfs_t	*zfsvfs = FUNC2(zdp);

	if (zfsvfs->z_replay)
		return (0);

	if ((zdp->z_mode & S_ISVTX) == 0)
		return (0);

	downer = FUNC5(zfsvfs, FUNC0(FUNC1(zdp)->i_uid),
	    cr, ZFS_OWNER);
	fowner = FUNC5(zfsvfs, FUNC0(FUNC1(zp)->i_uid),
	    cr, ZFS_OWNER);

	if ((uid = FUNC3(cr)) == downer || uid == fowner ||
	    FUNC6(zp, ACE_WRITE_DATA, 0, B_FALSE, cr) == 0)
		return (0);
	else
		return (FUNC4(cr));
}