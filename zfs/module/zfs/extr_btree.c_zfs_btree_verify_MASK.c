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
typedef  int /*<<< orphan*/  zfs_btree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int zfs_btree_verify_intensity ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(zfs_btree_t *tree)
{
	if (zfs_btree_verify_intensity == 0)
		return;
	FUNC1(tree);
	if (zfs_btree_verify_intensity == 1)
		return;
	FUNC3(tree);
	if (zfs_btree_verify_intensity == 2)
		return;
	FUNC0(tree);
	if (zfs_btree_verify_intensity == 3)
		return;
	FUNC2(tree);

	if (zfs_btree_verify_intensity == 4)
		return;
	FUNC4(tree);
}