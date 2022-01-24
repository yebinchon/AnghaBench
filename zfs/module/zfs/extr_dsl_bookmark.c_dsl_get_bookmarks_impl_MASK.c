#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  ds_bookmarks; TYPE_1__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_11__ {int /*<<< orphan*/  dbn_name; int /*<<< orphan*/  dbn_phys; } ;
typedef  TYPE_3__ dsl_bookmark_node_t ;
struct TYPE_9__ {int /*<<< orphan*/ * dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(dsl_dataset_t *ds, nvlist_t *props, nvlist_t *outnvl)
{
	dsl_pool_t *dp = ds->ds_dir->dd_pool;

	FUNC0(FUNC6(dp));

	if (FUNC5(ds))
		return (FUNC2(EINVAL));

	for (dsl_bookmark_node_t *dbn = FUNC3(&ds->ds_bookmarks);
	    dbn != NULL; dbn = FUNC1(&ds->ds_bookmarks, dbn)) {
		nvlist_t *out_props = FUNC8();

		FUNC4(dp, &dbn->dbn_phys, props, out_props);

		FUNC7(outnvl, dbn->dbn_name, out_props);
		FUNC9(out_props);
	}
	return (0);
}