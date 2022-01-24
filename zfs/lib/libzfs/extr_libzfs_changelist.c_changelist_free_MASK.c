#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uu_avl_walk_t ;
struct TYPE_7__ {scalar_t__ cl_pool; scalar_t__ cl_tree; int /*<<< orphan*/  cn_handle; } ;
typedef  TYPE_1__ prop_changenode_t ;
typedef  TYPE_1__ prop_changelist_t ;

/* Variables and functions */
 int /*<<< orphan*/  UU_WALK_ROBUST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(prop_changelist_t *clp)
{
	prop_changenode_t *cn;

	if (clp->cl_tree) {
		uu_avl_walk_t *walk;

		if ((walk = FUNC6(clp->cl_tree,
		    UU_WALK_ROBUST)) == NULL)
			return;

		while ((cn = FUNC5(walk)) != NULL) {
			FUNC3(clp->cl_tree, cn);
			FUNC7(cn->cn_handle);
			FUNC0(cn);
		}

		FUNC4(walk);
		FUNC1(clp->cl_tree);
	}
	if (clp->cl_pool)
		FUNC2(clp->cl_pool);

	FUNC0(clp);
}