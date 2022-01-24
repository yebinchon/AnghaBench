#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ddt_repair_tree; int /*<<< orphan*/  ddt_spa; } ;
typedef  TYPE_1__ ddt_t ;
struct TYPE_11__ {int /*<<< orphan*/ * dde_repair_abd; } ;
typedef  TYPE_2__ ddt_entry_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(ddt_t *ddt, ddt_entry_t *dde)
{
	avl_index_t where;

	FUNC2(ddt);

	if (dde->dde_repair_abd != NULL && FUNC5(ddt->ddt_spa) &&
	    FUNC0(&ddt->ddt_repair_tree, dde, &where) == NULL)
		FUNC1(&ddt->ddt_repair_tree, dde, where);
	else
		FUNC4(dde);

	FUNC3(ddt);
}