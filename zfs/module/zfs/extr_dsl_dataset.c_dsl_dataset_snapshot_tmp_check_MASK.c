#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_6__ {int /*<<< orphan*/  ddsta_htag; int /*<<< orphan*/  ddsta_snapname; int /*<<< orphan*/  ddsta_fsname; } ;
typedef  TYPE_2__ dsl_dataset_snapshot_tmp_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_USERREFS ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_snapshot_tmp_arg_t *ddsta = arg;
	dsl_pool_t *dp = FUNC1(tx);
	dsl_dataset_t *ds;
	int error;

	error = FUNC2(dp, ddsta->ddsta_fsname, FTAG, &ds);
	if (error != 0)
		return (error);

	/* NULL cred means no limit check for tmp snapshot */
	error = FUNC4(ds, ddsta->ddsta_snapname,
	    tx, B_FALSE, 0, NULL);
	if (error != 0) {
		FUNC3(ds, FTAG);
		return (error);
	}

	if (FUNC6(dp->dp_spa) < SPA_VERSION_USERREFS) {
		FUNC3(ds, FTAG);
		return (FUNC0(ENOTSUP));
	}
	error = FUNC5(NULL, ddsta->ddsta_htag,
	    B_TRUE, tx);
	if (error != 0) {
		FUNC3(ds, FTAG);
		return (error);
	}

	FUNC3(ds, FTAG);
	return (0);
}