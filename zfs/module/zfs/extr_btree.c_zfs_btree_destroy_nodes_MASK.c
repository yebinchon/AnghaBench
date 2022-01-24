#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int bt_height; int /*<<< orphan*/ * bt_bulk; scalar_t__ bt_num_elems; int /*<<< orphan*/ * bt_root; } ;
typedef  TYPE_1__ zfs_btree_t ;
typedef  int /*<<< orphan*/  zfs_btree_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfs_btree_node_destroy ; 

void *
FUNC4(zfs_btree_t *tree, zfs_btree_index_t **cookie)
{
	if (*cookie == NULL) {
		if (tree->bt_height == -1)
			return (NULL);
		*cookie = FUNC0(sizeof (**cookie), KM_SLEEP);
		return (FUNC2(tree, *cookie));
	}

	void *rval = FUNC3(tree, *cookie, *cookie,
	    zfs_btree_node_destroy);
	if (rval == NULL)   {
		tree->bt_root = NULL;
		tree->bt_height = -1;
		tree->bt_num_elems = 0;
		FUNC1(*cookie, sizeof (**cookie));
		tree->bt_bulk = NULL;
	}
	return (rval);
}