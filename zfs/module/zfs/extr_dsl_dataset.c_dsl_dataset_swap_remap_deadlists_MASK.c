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
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {int /*<<< orphan*/  dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/  ds_remap_deadlist; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(dsl_dataset_t *clone,
    dsl_dataset_t *origin, dmu_tx_t *tx)
{
	uint64_t clone_remap_dl_obj, origin_remap_dl_obj;
	dsl_pool_t *dp = FUNC1(tx);

	FUNC0(FUNC7(dp));

	clone_remap_dl_obj = FUNC2(clone);
	origin_remap_dl_obj = FUNC2(origin);

	if (clone_remap_dl_obj != 0) {
		FUNC5(&clone->ds_remap_deadlist);
		FUNC4(clone, tx);
	}
	if (origin_remap_dl_obj != 0) {
		FUNC5(&origin->ds_remap_deadlist);
		FUNC4(origin, tx);
	}

	if (clone_remap_dl_obj != 0) {
		FUNC3(origin,
		    clone_remap_dl_obj, tx);
		FUNC6(&origin->ds_remap_deadlist,
		    dp->dp_meta_objset, clone_remap_dl_obj);
	}
	if (origin_remap_dl_obj != 0) {
		FUNC3(clone,
		    origin_remap_dl_obj, tx);
		FUNC6(&clone->ds_remap_deadlist,
		    dp->dp_meta_objset, origin_remap_dl_obj);
	}
}