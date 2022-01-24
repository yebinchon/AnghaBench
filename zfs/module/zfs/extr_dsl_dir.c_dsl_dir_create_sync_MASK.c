#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_13__ {int /*<<< orphan*/  dp_spa; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_14__ {int /*<<< orphan*/  dd_object; } ;
typedef  TYPE_2__ dsl_dir_t ;
struct TYPE_15__ {int /*<<< orphan*/  dd_flags; void* dd_child_dir_zapobj; void* dd_props_zapobj; int /*<<< orphan*/  dd_parent_obj; int /*<<< orphan*/  dd_creation_time; } ;
typedef  TYPE_3__ dsl_dir_phys_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_16__ {TYPE_3__* db_data; } ;
typedef  TYPE_4__ dmu_buf_t ;
struct TYPE_17__ {int /*<<< orphan*/  dd_child_dir_zapobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  DD_FIELD_FILESYSTEM_COUNT ; 
 int /*<<< orphan*/  DD_FLAG_USED_BREAKDOWN ; 
 int /*<<< orphan*/  DMU_OT_DSL_DIR ; 
 int /*<<< orphan*/  DMU_OT_DSL_DIR_CHILD_MAP ; 
 int /*<<< orphan*/  DMU_OT_DSL_PROPS ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 char const* DMU_POOL_ROOT_DATASET ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ SPA_VERSION_USED_BREAKDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

uint64_t
FUNC11(dsl_pool_t *dp, dsl_dir_t *pds, const char *name,
    dmu_tx_t *tx)
{
	objset_t *mos = dp->dp_meta_objset;
	uint64_t ddobj;
	dsl_dir_phys_t *ddphys;
	dmu_buf_t *dbuf;

	ddobj = FUNC4(mos, DMU_OT_DSL_DIR, 0,
	    DMU_OT_DSL_DIR, sizeof (dsl_dir_phys_t), tx);
	if (pds) {
		FUNC0(FUNC9(mos, FUNC5(pds)->dd_child_dir_zapobj,
		    name, sizeof (uint64_t), 1, &ddobj, tx));
	} else {
		/* it's the root dir */
		FUNC0(FUNC9(mos, DMU_POOL_DIRECTORY_OBJECT,
		    DMU_POOL_ROOT_DATASET, sizeof (uint64_t), 1, &ddobj, tx));
	}
	FUNC0(FUNC1(mos, ddobj, FTAG, &dbuf));
	FUNC3(dbuf, tx);
	ddphys = dbuf->db_data;

	ddphys->dd_creation_time = FUNC7();
	if (pds) {
		ddphys->dd_parent_obj = pds->dd_object;

		/* update the filesystem counts */
		FUNC6(pds, 1, DD_FIELD_FILESYSTEM_COUNT, tx);
	}
	ddphys->dd_props_zapobj = FUNC10(mos,
	    DMU_OT_DSL_PROPS, DMU_OT_NONE, 0, tx);
	ddphys->dd_child_dir_zapobj = FUNC10(mos,
	    DMU_OT_DSL_DIR_CHILD_MAP, DMU_OT_NONE, 0, tx);
	if (FUNC8(dp->dp_spa) >= SPA_VERSION_USED_BREAKDOWN)
		ddphys->dd_flags |= DD_FLAG_USED_BREAKDOWN;

	FUNC2(dbuf, FTAG);

	return (ddobj);
}