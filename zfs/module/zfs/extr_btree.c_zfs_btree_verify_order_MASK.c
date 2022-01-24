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
struct TYPE_4__ {int bt_height; int /*<<< orphan*/ * bt_root; } ;
typedef  TYPE_1__ zfs_btree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(zfs_btree_t *tree)
{
	FUNC0(tree->bt_height == -1, tree->bt_root == NULL);
	if (tree->bt_height == -1) {
		return;
	}

	FUNC1(tree, tree->bt_root);
}