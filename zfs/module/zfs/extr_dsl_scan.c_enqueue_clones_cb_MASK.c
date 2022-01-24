#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dsl_scan_t ;
struct TYPE_11__ {int /*<<< orphan*/ * dp_scan; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_12__ {scalar_t__ ds_object; int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_14__ {scalar_t__ ds_prev_snap_obj; int /*<<< orphan*/  ds_prev_snap_txg; } ;
struct TYPE_13__ {scalar_t__ dd_origin_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,TYPE_2__**) ; 
 TYPE_7__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(dsl_pool_t *dp, dsl_dataset_t *hds, void *arg)
{
	uint64_t originobj = *(uint64_t *)arg;
	dsl_dataset_t *ds;
	int err;
	dsl_scan_t *scn = dp->dp_scan;

	if (FUNC3(hds->ds_dir)->dd_origin_obj != originobj)
		return (0);

	err = FUNC0(dp, hds->ds_object, FTAG, &ds);
	if (err)
		return (err);

	while (FUNC1(ds)->ds_prev_snap_obj != originobj) {
		dsl_dataset_t *prev;
		err = FUNC0(dp,
		    FUNC1(ds)->ds_prev_snap_obj, FTAG, &prev);

		FUNC2(ds, FTAG);
		if (err)
			return (err);
		ds = prev;
	}
	FUNC4(scn, ds->ds_object,
	    FUNC1(ds)->ds_prev_snap_txg);
	FUNC2(ds, FTAG);
	return (0);
}