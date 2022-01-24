#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ds_bp_rwlock; TYPE_2__* ds_objset; TYPE_1__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  ds_hold_flags_t ;
struct TYPE_12__ {scalar_t__ drc_resumable; scalar_t__ drc_raw; TYPE_3__* drc_ds; } ;
typedef  TYPE_4__ dmu_recv_cookie_t ;
struct TYPE_10__ {int /*<<< orphan*/  os_raw_receive; } ;
struct TYPE_9__ {int /*<<< orphan*/  dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DS_HOLD_FLAG_DECRYPT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  dmu_recv_tag ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(dmu_recv_cookie_t *drc)
{
	dsl_dataset_t *ds = drc->drc_ds;
	ds_hold_flags_t dsflags = (drc->drc_raw) ? 0 : DS_HOLD_FLAG_DECRYPT;

	/*
	 * Wait for the txg sync before cleaning up the receive. For
	 * resumable receives, this ensures that our resume state has
	 * been written out to disk. For raw receives, this ensures
	 * that the user accounting code will not attempt to do anything
	 * after we stopped receiving the dataset.
	 */
	FUNC7(ds->ds_dir->dd_pool, 0);
	ds->ds_objset->os_raw_receive = B_FALSE;

	FUNC5(&ds->ds_bp_rwlock, RW_READER, FTAG);
	if (drc->drc_resumable && !FUNC0(FUNC2(ds))) {
		FUNC6(&ds->ds_bp_rwlock, FTAG);
		FUNC1(ds, dsflags, dmu_recv_tag);
	} else {
		char name[ZFS_MAX_DATASET_NAME_LEN];
		FUNC6(&ds->ds_bp_rwlock, FTAG);
		FUNC3(ds, name);
		FUNC1(ds, dsflags, dmu_recv_tag);
		(void) FUNC4(name);
	}
}