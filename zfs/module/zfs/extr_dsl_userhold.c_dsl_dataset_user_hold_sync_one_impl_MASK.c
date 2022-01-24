#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ minor_t ;
struct TYPE_10__ {int /*<<< orphan*/  dp_config_rwlock; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_11__ {scalar_t__ ds_userrefs; scalar_t__ ds_object; int /*<<< orphan*/  ds_dbuf; TYPE_1__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_12__ {scalar_t__ ds_userrefs_obj; } ;
struct TYPE_9__ {TYPE_2__* dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  DMU_OT_USERREFS ; 
 int MAXNAMELEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,int /*<<< orphan*/ *,char*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,char const*,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(nvlist_t *tmpholds, dsl_dataset_t *ds,
    const char *htag, minor_t minor, uint64_t now, dmu_tx_t *tx)
{
	dsl_pool_t *dp = ds->ds_dir->dd_pool;
	objset_t *mos = dp->dp_meta_objset;
	uint64_t zapobj;

	FUNC0(FUNC1(&dp->dp_config_rwlock));

	if (FUNC4(ds)->ds_userrefs_obj == 0) {
		/*
		 * This is the first user hold for this dataset.  Create
		 * the userrefs zap object.
		 */
		FUNC3(ds->ds_dbuf, tx);
		zapobj = FUNC4(ds)->ds_userrefs_obj =
		    FUNC14(mos, DMU_OT_USERREFS, DMU_OT_NONE, 0, tx);
	} else {
		zapobj = FUNC4(ds)->ds_userrefs_obj;
	}
	ds->ds_userrefs++;

	FUNC2(FUNC13(mos, zapobj, htag, 8, 1, &now, tx));

	if (minor != 0) {
		char name[MAXNAMELEN];
		nvlist_t *tags;

		FUNC2(FUNC5(dp, ds->ds_object,
		    htag, now, tx));
		(void) FUNC11(name, sizeof (name), "%llx",
		    (u_longlong_t)ds->ds_object);

		if (FUNC10(tmpholds, name, &tags) != 0) {
			tags = FUNC8();
			FUNC6(tags, htag);
			FUNC7(tmpholds, name, tags);
			FUNC9(tags);
		} else {
			FUNC6(tags, htag);
		}
	}

	FUNC12(ds, "hold", tx,
	    "tag=%s temp=%d refs=%llu",
	    htag, minor != 0, (u_longlong_t)ds->ds_userrefs);
}