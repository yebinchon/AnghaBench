#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_9__ {int /*<<< orphan*/  ds_opening_lock; int /*<<< orphan*/ * ds_objset; int /*<<< orphan*/  ds_lock; int /*<<< orphan*/  ds_bp_rwlock; TYPE_1__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_8__ {int /*<<< orphan*/  dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC10(dsl_dataset_t *ds, objset_t **osp)
{
	int err = 0;

	/*
	 * We shouldn't be doing anything with dsl_dataset_t's unless the
	 * pool_config lock is held, or the dataset is long-held.
	 */
	FUNC0(FUNC5(ds->ds_dir->dd_pool) ||
	    FUNC4(ds));

	FUNC6(&ds->ds_opening_lock);
	if (ds->ds_objset == NULL) {
		objset_t *os;
		FUNC8(&ds->ds_bp_rwlock, RW_READER, FTAG);
		err = FUNC1(FUNC3(ds),
		    ds, FUNC2(ds), &os);
		FUNC9(&ds->ds_bp_rwlock, FTAG);

		if (err == 0) {
			FUNC6(&ds->ds_lock);
			FUNC0(ds->ds_objset == NULL);
			ds->ds_objset = os;
			FUNC7(&ds->ds_lock);
		}
	}
	*osp = ds->ds_objset;
	FUNC7(&ds->ds_opening_lock);
	return (err);
}