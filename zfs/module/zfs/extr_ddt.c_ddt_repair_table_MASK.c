#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_17__ {int /*<<< orphan*/  ddt_checksum; int /*<<< orphan*/  ddt_repair_tree; int /*<<< orphan*/ * ddt_spa; } ;
typedef  TYPE_1__ ddt_t ;
struct TYPE_18__ {int /*<<< orphan*/  dde_key; } ;
typedef  TYPE_2__ ddt_entry_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(ddt_t *ddt, zio_t *rio)
{
	spa_t *spa = ddt->ddt_spa;
	ddt_entry_t *dde, *rdde_next, *rdde;
	avl_tree_t *t = &ddt->ddt_repair_tree;
	blkptr_t blk;

	if (FUNC9(spa) > 1)
		return;

	FUNC4(ddt);
	for (rdde = FUNC1(t); rdde != NULL; rdde = rdde_next) {
		rdde_next = FUNC0(t, rdde);
		FUNC2(&ddt->ddt_repair_tree, rdde);
		FUNC5(ddt);
		FUNC3(ddt->ddt_checksum, &rdde->dde_key, NULL, &blk);
		dde = FUNC8(ddt, &blk);
		FUNC7(ddt, dde, rdde, rio);
		FUNC6(ddt, dde);
		FUNC4(ddt);
	}
	FUNC5(ddt);
}