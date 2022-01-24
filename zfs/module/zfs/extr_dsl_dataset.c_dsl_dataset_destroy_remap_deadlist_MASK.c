#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_11__ {int /*<<< orphan*/  dl_object; } ;
struct TYPE_10__ {TYPE_4__ ds_remap_deadlist; TYPE_2__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_9__ {TYPE_1__* dd_pool; } ;
struct TYPE_8__ {int /*<<< orphan*/ * dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_OBSOLETE_COUNTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(dsl_dataset_t *ds, dmu_tx_t *tx)
{
	uint64_t remap_deadlist_object;
	spa_t *spa = ds->ds_dir->dd_pool->dp_spa;

	FUNC0(FUNC1(tx));
	FUNC0(FUNC2(ds));

	remap_deadlist_object = ds->ds_remap_deadlist.dl_object;
	FUNC4(&ds->ds_remap_deadlist);
	FUNC5(FUNC7(spa), remap_deadlist_object, tx);
	FUNC3(ds, tx);
	FUNC6(spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
}