#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_deleg_who_type_t ;
typedef  int /*<<< orphan*/  uu_avl_t ;
typedef  int /*<<< orphan*/  uu_avl_index_t ;
struct TYPE_8__ {void* dp_descend; void* dp_local; } ;
typedef  TYPE_1__ deleg_perm_t ;
struct TYPE_9__ {TYPE_1__ dpn_perm; } ;
typedef  TYPE_2__ deleg_perm_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 void* B_TRUE ; 
#define  ZFS_DELEG_DESCENDENT 130 
#define  ZFS_DELEG_LOCAL 129 
#define  ZFS_DELEG_NA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(uu_avl_t *avl, deleg_perm_node_t *node,
    zfs_deleg_who_type_t who_type, const char *name, char locality)
{
	uu_avl_index_t idx = 0;

	deleg_perm_node_t *found_node = NULL;
	deleg_perm_t	*deleg_perm = &node->dpn_perm;

	FUNC1(deleg_perm, who_type, name);

	if ((found_node = FUNC2(avl, node, NULL, &idx))
	    == NULL)
		FUNC3(avl, node, idx);
	else {
		node = found_node;
		deleg_perm = &node->dpn_perm;
	}


	switch (locality) {
	case ZFS_DELEG_LOCAL:
		deleg_perm->dp_local = B_TRUE;
		break;
	case ZFS_DELEG_DESCENDENT:
		deleg_perm->dp_descend = B_TRUE;
		break;
	case ZFS_DELEG_NA:
		break;
	default:
		FUNC0(B_FALSE); /* invalid locality */
	}
}