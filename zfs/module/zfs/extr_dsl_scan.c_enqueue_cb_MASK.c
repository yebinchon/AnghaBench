#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsl_scan_t ;
struct TYPE_10__ {int /*<<< orphan*/ * dp_scan; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_11__ {scalar_t__ ds_object; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_12__ {scalar_t__ ds_prev_snap_obj; scalar_t__ ds_next_snap_obj; int /*<<< orphan*/  ds_prev_snap_txg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,TYPE_2__**) ; 
 TYPE_6__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(dsl_pool_t *dp, dsl_dataset_t *hds, void *arg)
{
	dsl_dataset_t *ds;
	int err;
	dsl_scan_t *scn = dp->dp_scan;

	err = FUNC0(dp, hds->ds_object, FTAG, &ds);
	if (err)
		return (err);

	while (FUNC1(ds)->ds_prev_snap_obj != 0) {
		dsl_dataset_t *prev;
		err = FUNC0(dp,
		    FUNC1(ds)->ds_prev_snap_obj, FTAG, &prev);
		if (err) {
			FUNC2(ds, FTAG);
			return (err);
		}

		/*
		 * If this is a clone, we don't need to worry about it for now.
		 */
		if (FUNC1(prev)->ds_next_snap_obj != ds->ds_object) {
			FUNC2(ds, FTAG);
			FUNC2(prev, FTAG);
			return (0);
		}
		FUNC2(ds, FTAG);
		ds = prev;
	}

	FUNC3(scn, ds->ds_object,
	    FUNC1(ds)->ds_prev_snap_txg);
	FUNC2(ds, FTAG);
	return (0);
}