#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * zsda_tx; int /*<<< orphan*/  zsda_value; int /*<<< orphan*/  zsda_source; int /*<<< orphan*/  zsda_name; } ;
typedef  TYPE_1__ zvol_set_prop_int_arg_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_7__ {int /*<<< orphan*/  dd_object; } ;
typedef  TYPE_2__ dsl_dir_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DS_FIND_CHILDREN ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_VOLMODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zvol_set_volmode_sync_cb ; 

__attribute__((used)) static void
FUNC9(void *arg, dmu_tx_t *tx)
{
	zvol_set_prop_int_arg_t *zsda = arg;
	dsl_pool_t *dp = FUNC2(tx);
	dsl_dir_t *dd;
	dsl_dataset_t *ds;
	int error;

	FUNC0(FUNC5(dp, zsda->zsda_name, FTAG, &dd, NULL));
	zsda->zsda_tx = tx;

	error = FUNC3(dp, zsda->zsda_name, FTAG, &ds);
	if (error == 0) {
		FUNC7(ds, FUNC8(ZFS_PROP_VOLMODE),
		    zsda->zsda_source, sizeof (zsda->zsda_value), 1,
		    &zsda->zsda_value, zsda->zsda_tx);
		FUNC4(ds, FTAG);
	}

	FUNC1(dp, dd->dd_object, zvol_set_volmode_sync_cb,
	    zsda, DS_FIND_CHILDREN);

	FUNC6(dd, FTAG);
}