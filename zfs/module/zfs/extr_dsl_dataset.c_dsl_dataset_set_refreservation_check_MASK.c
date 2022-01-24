#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_12__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_13__ {scalar_t__ ds_reserved; scalar_t__ ds_quota; int /*<<< orphan*/  ds_dir; int /*<<< orphan*/  ds_lock; scalar_t__ ds_is_snapshot; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_14__ {int /*<<< orphan*/  ddsqra_value; int /*<<< orphan*/  ddsqra_source; int /*<<< orphan*/  ddsqra_name; } ;
typedef  TYPE_3__ dsl_dataset_set_qr_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_15__ {scalar_t__ ds_unique_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_REFRESERVATION ; 
 int /*<<< orphan*/  ZFS_PROP_REFRESERVATION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 TYPE_6__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_set_qr_arg_t *ddsqra = arg;
	dsl_pool_t *dp = FUNC4(tx);
	dsl_dataset_t *ds;
	int error;
	uint64_t newval, unique;

	if (FUNC13(dp->dp_spa) < SPA_VERSION_REFRESERVATION)
		return (FUNC2(ENOTSUP));

	error = FUNC5(dp, ddsqra->ddsqra_name, FTAG, &ds);
	if (error != 0)
		return (error);

	if (ds->ds_is_snapshot) {
		FUNC8(ds, FTAG);
		return (FUNC2(EINVAL));
	}

	error = FUNC10(ds->ds_dir,
	    FUNC14(ZFS_PROP_REFRESERVATION),
	    ddsqra->ddsqra_source, ddsqra->ddsqra_value, &newval);
	if (error != 0) {
		FUNC8(ds, FTAG);
		return (error);
	}

	/*
	 * If we are doing the preliminary check in open context, the
	 * space estimates may be inaccurate.
	 */
	if (!FUNC3(tx)) {
		FUNC8(ds, FTAG);
		return (0);
	}

	FUNC11(&ds->ds_lock);
	if (!FUNC0(ds))
		FUNC7(ds);
	unique = FUNC6(ds)->ds_unique_bytes;
	FUNC12(&ds->ds_lock);

	if (FUNC1(unique, newval) > FUNC1(unique, ds->ds_reserved)) {
		uint64_t delta = FUNC1(unique, newval) -
		    FUNC1(unique, ds->ds_reserved);

		if (delta >
		    FUNC9(ds->ds_dir, NULL, 0, B_TRUE) ||
		    (ds->ds_quota > 0 && newval > ds->ds_quota)) {
			FUNC8(ds, FTAG);
			return (FUNC2(ENOSPC));
		}
	}

	FUNC8(ds, FTAG);
	return (0);
}