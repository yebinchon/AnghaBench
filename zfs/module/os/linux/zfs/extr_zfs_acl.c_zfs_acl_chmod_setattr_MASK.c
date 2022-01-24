#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int z_pflags; int /*<<< orphan*/  z_acl_lock; int /*<<< orphan*/  z_lock; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_11__ {int z_hints; } ;
typedef  TYPE_2__ zfs_acl_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int V4_ACL_WIDE_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int
FUNC7(znode_t *zp, zfs_acl_t **aclp, uint64_t mode)
{
	FUNC2(&zp->z_acl_lock);
	FUNC2(&zp->z_lock);
	*aclp = FUNC4(FUNC6(zp));
	(*aclp)->z_hints = zp->z_pflags & V4_ACL_WIDE_FLAGS;
	FUNC5(FUNC1(zp), mode, *aclp);
	FUNC3(&zp->z_lock);
	FUNC3(&zp->z_acl_lock);
	FUNC0(*aclp);

	return (0);
}