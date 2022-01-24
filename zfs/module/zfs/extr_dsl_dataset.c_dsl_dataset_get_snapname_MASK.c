#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_12__ {int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_13__ {scalar_t__* ds_snapname; scalar_t__ ds_object; TYPE_6__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_14__ {int /*<<< orphan*/  ds_snapnames_zapobj; } ;
typedef  TYPE_3__ dsl_dataset_phys_t ;
struct TYPE_15__ {TYPE_3__* db_data; } ;
typedef  TYPE_4__ dmu_buf_t ;
struct TYPE_18__ {scalar_t__ ds_next_snap_obj; } ;
struct TYPE_17__ {TYPE_1__* dd_pool; } ;
struct TYPE_16__ {int /*<<< orphan*/  dd_head_dataset_obj; } ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (TYPE_2__*) ; 
 TYPE_5__* FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int,char*,unsigned long long,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ zfs_recover ; 

int
FUNC6(dsl_dataset_t *ds)
{
	dsl_dataset_phys_t *headphys;
	int err;
	dmu_buf_t *headdbuf;
	dsl_pool_t *dp = ds->ds_dir->dd_pool;
	objset_t *mos = dp->dp_meta_objset;

	if (ds->ds_snapname[0])
		return (0);
	if (FUNC2(ds)->ds_next_snap_obj == 0)
		return (0);

	err = FUNC0(mos, FUNC3(ds->ds_dir)->dd_head_dataset_obj,
	    FTAG, &headdbuf);
	if (err != 0)
		return (err);
	headphys = headdbuf->db_data;
	err = FUNC5(dp->dp_meta_objset,
	    headphys->ds_snapnames_zapobj, ds->ds_object, 0, ds->ds_snapname);
	if (err != 0 && zfs_recover == B_TRUE) {
		err = 0;
		(void) FUNC4(ds->ds_snapname, sizeof (ds->ds_snapname),
		    "SNAPOBJ=%llu-ERR=%d",
		    (unsigned long long)ds->ds_object, err);
	}
	FUNC1(headdbuf, FTAG);
	return (err);
}