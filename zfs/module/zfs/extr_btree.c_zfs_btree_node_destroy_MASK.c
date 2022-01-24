#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int bt_elem_size; int /*<<< orphan*/  bt_num_nodes; } ;
typedef  TYPE_1__ zfs_btree_t ;
struct TYPE_8__ {int /*<<< orphan*/  bth_core; } ;
typedef  TYPE_2__ zfs_btree_hdr_t ;
typedef  int /*<<< orphan*/  zfs_btree_core_t ;

/* Variables and functions */
 int BTREE_CORE_ELEMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  zfs_btree_leaf_cache ; 

__attribute__((used)) static void
FUNC2(zfs_btree_t *tree, zfs_btree_hdr_t *node)
{
	tree->bt_num_nodes--;
	if (!node->bth_core) {
		FUNC0(zfs_btree_leaf_cache, node);
	} else {
		FUNC1(node, sizeof (zfs_btree_core_t) +
		    BTREE_CORE_ELEMS * tree->bt_elem_size);
	}
}