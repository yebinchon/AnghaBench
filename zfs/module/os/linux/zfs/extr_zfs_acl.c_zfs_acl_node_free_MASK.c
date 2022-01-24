#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int z_allocsize; struct TYPE_4__* z_allocdata; } ;
typedef  TYPE_1__ zfs_acl_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC1(zfs_acl_node_t *aclnode)
{
	if (aclnode->z_allocsize)
		FUNC0(aclnode->z_allocdata, aclnode->z_allocsize);
	FUNC0(aclnode, sizeof (zfs_acl_node_t));
}