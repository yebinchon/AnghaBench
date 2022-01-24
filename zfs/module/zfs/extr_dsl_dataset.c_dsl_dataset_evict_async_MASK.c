#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ spa_feature_t ;
struct TYPE_8__ {int /*<<< orphan*/  ds_bp_rwlock; int /*<<< orphan*/  ds_longholds; int /*<<< orphan*/  ds_remap_deadlist_lock; int /*<<< orphan*/  ds_sendstream_lock; int /*<<< orphan*/  ds_opening_lock; int /*<<< orphan*/  ds_lock; int /*<<< orphan*/  ds_prop_cbs; int /*<<< orphan*/  ds_synced_link; scalar_t__ ds_dir; int /*<<< orphan*/  ds_remap_deadlist; int /*<<< orphan*/  ds_deadlist; int /*<<< orphan*/  ds_pending_deadlist; int /*<<< orphan*/ * ds_prev; int /*<<< orphan*/ * ds_objset; int /*<<< orphan*/ * ds_dbuf; int /*<<< orphan*/ * ds_owner; } ;
typedef  TYPE_1__ dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SPA_FEATURES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(void *dbu)
{
	dsl_dataset_t *ds = dbu;

	FUNC0(ds->ds_owner == NULL);

	ds->ds_dbuf = NULL;

	if (ds->ds_objset != NULL)
		FUNC2(ds->ds_objset);

	if (ds->ds_prev) {
		FUNC5(ds->ds_prev, ds);
		ds->ds_prev = NULL;
	}

	FUNC3(ds);

	FUNC1(&ds->ds_pending_deadlist);
	if (FUNC7(&ds->ds_deadlist))
		FUNC6(&ds->ds_deadlist);
	if (FUNC7(&ds->ds_remap_deadlist))
		FUNC6(&ds->ds_remap_deadlist);
	if (ds->ds_dir)
		FUNC8(ds->ds_dir, ds);

	FUNC0(!FUNC11(&ds->ds_synced_link));

	for (spa_feature_t f = 0; f < SPA_FEATURES; f++) {
		if (FUNC4(ds, f))
			FUNC14(ds, f);
	}

	FUNC10(&ds->ds_prop_cbs);
	FUNC12(&ds->ds_lock);
	FUNC12(&ds->ds_opening_lock);
	FUNC12(&ds->ds_sendstream_lock);
	FUNC12(&ds->ds_remap_deadlist_lock);
	FUNC15(&ds->ds_longholds);
	FUNC13(&ds->ds_bp_rwlock);

	FUNC9(ds, sizeof (dsl_dataset_t));
}