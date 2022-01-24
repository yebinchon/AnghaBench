#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  ddsqra_value; int /*<<< orphan*/  ddsqra_source; int /*<<< orphan*/  ddsqra_name; } ;
typedef  TYPE_1__ dsl_dir_set_qr_arg_t ;
struct TYPE_10__ {TYPE_3__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_12__ {scalar_t__ dd_reserved; scalar_t__ dd_used_bytes; } ;
struct TYPE_11__ {int /*<<< orphan*/  dd_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(void *arg, dmu_tx_t *tx)
{
	dsl_dir_set_qr_arg_t *ddsqra = arg;
	dsl_pool_t *dp = FUNC2(tx);
	dsl_dataset_t *ds;
	int error;
	uint64_t towrite, newval;

	error = FUNC3(dp, ddsqra->ddsqra_name, FTAG, &ds);
	if (error != 0)
		return (error);

	error = FUNC7(ds->ds_dir, "quota",
	    ddsqra->ddsqra_source, ddsqra->ddsqra_value, &newval);
	if (error != 0) {
		FUNC4(ds, FTAG);
		return (error);
	}

	if (newval == 0) {
		FUNC4(ds, FTAG);
		return (0);
	}

	FUNC8(&ds->ds_dir->dd_lock);
	/*
	 * If we are doing the preliminary check in open context, and
	 * there are pending changes, then don't fail it, since the
	 * pending changes could under-estimate the amount of space to be
	 * freed up.
	 */
	towrite = FUNC6(ds->ds_dir);
	if ((FUNC1(tx) || towrite == 0) &&
	    (newval < FUNC5(ds->ds_dir)->dd_reserved ||
	    newval < FUNC5(ds->ds_dir)->dd_used_bytes + towrite)) {
		error = FUNC0(ENOSPC);
	}
	FUNC9(&ds->ds_dir->dd_lock);
	FUNC4(ds, FTAG);
	return (error);
}