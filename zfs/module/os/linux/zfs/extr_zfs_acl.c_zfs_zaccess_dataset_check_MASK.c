#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int z_pflags; } ;
typedef  TYPE_1__ znode_t ;
typedef  int uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int ACE_DELETE ; 
 int ACE_DELETE_CHILD ; 
 int ACE_EXECUTE ; 
 int ACE_READ_DATA ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  EROFS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int WRITE_MASK ; 
 int WRITE_MASK_ATTRS ; 
 int WRITE_MASK_DATA ; 
 int ZFS_AV_QUARANTINED ; 
 int ZFS_IMMUTABLE ; 
 int ZFS_NOUNLINK ; 
 int ZFS_READONLY ; 
 TYPE_4__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(znode_t *zp, uint32_t v4_mode)
{
	if ((v4_mode & WRITE_MASK) && (FUNC5(FUNC3(zp))) &&
	    (!FUNC4(FUNC2(zp)->i_mode) ||
	    (FUNC4(FUNC2(zp)->i_mode) && (v4_mode & WRITE_MASK_ATTRS)))) {
		return (FUNC0(EROFS));
	}

	/*
	 * Only check for READONLY on non-directories.
	 */
	if ((v4_mode & WRITE_MASK_DATA) &&
	    ((!FUNC1(FUNC2(zp)->i_mode) &&
	    (zp->z_pflags & (ZFS_READONLY | ZFS_IMMUTABLE))) ||
	    (FUNC1(FUNC2(zp)->i_mode) &&
	    (zp->z_pflags & ZFS_IMMUTABLE)))) {
		return (FUNC0(EPERM));
	}

	if ((v4_mode & (ACE_DELETE | ACE_DELETE_CHILD)) &&
	    (zp->z_pflags & ZFS_NOUNLINK)) {
		return (FUNC0(EPERM));
	}

	if (((v4_mode & (ACE_READ_DATA|ACE_EXECUTE)) &&
	    (zp->z_pflags & ZFS_AV_QUARANTINED))) {
		return (FUNC0(EACCES));
	}

	return (0);
}