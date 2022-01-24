#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int z_pflags; int z_mode; int /*<<< orphan*/  z_acl_lock; } ;
typedef  TYPE_1__ znode_t ;
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int boolean_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_EXECUTE ; 
 int B_FALSE ; 
 int B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EACCES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int ZFS_AV_QUARANTINED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int ZFS_NO_EXECS_DENIED ; 
 int ZFS_XATTR ; 
 TYPE_5__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs__fastpath__execute__access__miss ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int
FUNC14(znode_t *zdp, cred_t *cr)
{
	boolean_t owner = B_FALSE;
	boolean_t groupmbr = B_FALSE;
	boolean_t is_attr;
	uid_t uid = FUNC9(cr);
	int error;

	if (zdp->z_pflags & ZFS_AV_QUARANTINED)
		return (FUNC3(EACCES));

	is_attr = ((zdp->z_pflags & ZFS_XATTR) &&
	    (FUNC4(FUNC7(zdp)->i_mode)));
	if (is_attr)
		goto slow;


	FUNC11(&zdp->z_acl_lock);

	if (zdp->z_pflags & ZFS_NO_EXECS_DENIED) {
		FUNC12(&zdp->z_acl_lock);
		return (0);
	}

	if (FUNC2(FUNC7(zdp)->i_uid) != 0 ||
	    FUNC1(FUNC7(zdp)->i_gid) != 0) {
		FUNC12(&zdp->z_acl_lock);
		goto slow;
	}

	if (uid == FUNC2(FUNC7(zdp)->i_uid)) {
		owner = B_TRUE;
		if (zdp->z_mode & S_IXUSR) {
			FUNC12(&zdp->z_acl_lock);
			return (0);
		} else {
			FUNC12(&zdp->z_acl_lock);
			goto slow;
		}
	}
	if (FUNC10(FUNC1(FUNC7(zdp)->i_gid), cr)) {
		groupmbr = B_TRUE;
		if (zdp->z_mode & S_IXGRP) {
			FUNC12(&zdp->z_acl_lock);
			return (0);
		} else {
			FUNC12(&zdp->z_acl_lock);
			goto slow;
		}
	}
	if (!owner && !groupmbr) {
		if (zdp->z_mode & S_IXOTH) {
			FUNC12(&zdp->z_acl_lock);
			return (0);
		}
	}

	FUNC12(&zdp->z_acl_lock);

slow:
	FUNC0(zfs__fastpath__execute__access__miss);
	FUNC5(FUNC8(zdp));
	error = FUNC13(zdp, ACE_EXECUTE, 0, B_FALSE, cr);
	FUNC6(FUNC8(zdp));
	return (error);
}