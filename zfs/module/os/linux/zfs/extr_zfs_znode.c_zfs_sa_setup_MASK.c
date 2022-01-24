#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sa_attr_type_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MASTER_NODE_OBJ ; 
 int /*<<< orphan*/  ZFS_SA_ATTRS ; 
 int /*<<< orphan*/  ZPL_END ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_attr_table ; 

__attribute__((used)) static int
FUNC2(objset_t *osp, sa_attr_type_t **sa_table)
{
	uint64_t sa_obj = 0;
	int error;

	error = FUNC1(osp, MASTER_NODE_OBJ, ZFS_SA_ATTRS, 8, 1, &sa_obj);
	if (error != 0 && error != ENOENT)
		return (error);

	error = FUNC0(osp, sa_obj, zfs_attr_table, ZPL_END, sa_table);
	return (error);
}