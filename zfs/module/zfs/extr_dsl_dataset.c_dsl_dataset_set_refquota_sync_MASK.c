#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_7__ {scalar_t__ ds_quota; int /*<<< orphan*/  ds_dbuf; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_8__ {int /*<<< orphan*/  ddsqra_value; int /*<<< orphan*/  ddsqra_source; int /*<<< orphan*/  ddsqra_name; } ;
typedef  TYPE_2__ dsl_dataset_set_qr_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_REFQUOTA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_set_qr_arg_t *ddsqra = arg;
	dsl_pool_t *dp = FUNC2(tx);
	dsl_dataset_t *ds = NULL;
	uint64_t newval;

	FUNC0(FUNC3(dp, ddsqra->ddsqra_name, FTAG, &ds));

	FUNC6(ds,
	    FUNC7(ZFS_PROP_REFQUOTA),
	    ddsqra->ddsqra_source, sizeof (ddsqra->ddsqra_value), 1,
	    &ddsqra->ddsqra_value, tx);

	FUNC0(FUNC5(ds,
	    FUNC7(ZFS_PROP_REFQUOTA), &newval));

	if (ds->ds_quota != newval) {
		FUNC1(ds->ds_dbuf, tx);
		ds->ds_quota = newval;
	}
	FUNC4(ds, FTAG);
}