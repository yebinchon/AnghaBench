#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_13__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_14__ {scalar_t__ ddsqra_value; int /*<<< orphan*/  ddsqra_source; int /*<<< orphan*/  ddsqra_name; } ;
typedef  TYPE_2__ dsl_dir_set_qr_arg_t ;
struct TYPE_15__ {TYPE_8__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_17__ {int /*<<< orphan*/  dd_lock; int /*<<< orphan*/  dd_dbuf; } ;
struct TYPE_16__ {scalar_t__ dd_quota; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ SPA_VERSION_RECVD_PROPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_QUOTA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(void *arg, dmu_tx_t *tx)
{
	dsl_dir_set_qr_arg_t *ddsqra = arg;
	dsl_pool_t *dp = FUNC2(tx);
	dsl_dataset_t *ds;
	uint64_t newval;

	FUNC0(FUNC3(dp, ddsqra->ddsqra_name, FTAG, &ds));

	if (FUNC11(dp->dp_spa) >= SPA_VERSION_RECVD_PROPS) {
		FUNC7(ds, FUNC12(ZFS_PROP_QUOTA),
		    ddsqra->ddsqra_source, sizeof (ddsqra->ddsqra_value), 1,
		    &ddsqra->ddsqra_value, tx);

		FUNC0(FUNC6(ds,
		    FUNC12(ZFS_PROP_QUOTA), &newval));
	} else {
		newval = ddsqra->ddsqra_value;
		FUNC10(ds, "set", tx, "%s=%lld",
		    FUNC12(ZFS_PROP_QUOTA), (longlong_t)newval);
	}

	FUNC1(ds->ds_dir->dd_dbuf, tx);
	FUNC8(&ds->ds_dir->dd_lock);
	FUNC5(ds->ds_dir)->dd_quota = newval;
	FUNC9(&ds->ds_dir->dd_lock);
	FUNC4(ds, FTAG);
}