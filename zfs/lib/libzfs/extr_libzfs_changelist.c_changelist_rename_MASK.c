#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uu_avl_walk_t ;
struct TYPE_6__ {TYPE_4__* cn_handle; } ;
typedef  TYPE_1__ prop_changenode_t ;
struct TYPE_7__ {int /*<<< orphan*/  cl_tree; } ;
typedef  TYPE_2__ prop_changelist_t ;
typedef  int /*<<< orphan*/  newname ;
struct TYPE_8__ {char* zfs_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  UU_WALK_ROBUST ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(prop_changelist_t *clp, const char *src, const char *dst)
{
	prop_changenode_t *cn;
	uu_avl_walk_t *walk;
	char newname[ZFS_MAX_DATASET_NAME_LEN];

	if ((walk = FUNC7(clp->cl_tree, UU_WALK_ROBUST)) == NULL)
		return;

	while ((cn = FUNC6(walk)) != NULL) {
		/*
		 * Do not rename a clone that's not in the source hierarchy.
		 */
		if (!FUNC0(cn->cn_handle->zfs_name, src))
			continue;

		/*
		 * Destroy the previous mountpoint if needed.
		 */
		FUNC1(cn->cn_handle);

		(void) FUNC3(newname, dst, sizeof (newname));
		(void) FUNC2(newname, cn->cn_handle->zfs_name + FUNC4(src),
		    sizeof (newname));

		(void) FUNC3(cn->cn_handle->zfs_name, newname,
		    sizeof (cn->cn_handle->zfs_name));
	}

	FUNC5(walk);
}