#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_12__ {int /*<<< orphan*/  za_first_integer; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_13__ {TYPE_6__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_16__ {scalar_t__ ds_next_clones_obj; int ds_num_children; } ;
struct TYPE_15__ {TYPE_5__* dd_pool; } ;
struct TYPE_14__ {int /*<<< orphan*/ * dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 TYPE_8__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC13(dsl_dataset_t *ds, nvlist_t *val)
{
	uint64_t count = 0;
	objset_t *mos = ds->ds_dir->dd_pool->dp_meta_objset;
	zap_cursor_t zc;
	zap_attribute_t za;

	FUNC0(FUNC6(ds->ds_dir->dd_pool));

	/*
	 * There may be missing entries in ds_next_clones_obj
	 * due to a bug in a previous version of the code.
	 * Only trust it if it has the right number of entries.
	 */
	if (FUNC3(ds)->ds_next_clones_obj != 0) {
		FUNC1(FUNC8(mos, FUNC3(ds)->ds_next_clones_obj,
		    &count));
	}
	if (count != FUNC3(ds)->ds_num_children - 1) {
		return (ENOENT);
	}
	for (FUNC11(&zc, mos,
	    FUNC3(ds)->ds_next_clones_obj);
	    FUNC12(&zc, &za) == 0;
	    FUNC9(&zc)) {
		dsl_dataset_t *clone;
		char buf[ZFS_MAX_DATASET_NAME_LEN];
		FUNC1(FUNC2(ds->ds_dir->dd_pool,
		    za.za_first_integer, FTAG, &clone));
		FUNC5(clone->ds_dir, buf);
		FUNC7(val, buf);
		FUNC4(clone, FTAG);
	}
	FUNC10(&zc);
	return (0);
}