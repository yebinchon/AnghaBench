#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dp_meta_objset; int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  dd_object; } ;
typedef  TYPE_2__ dsl_dir_t ;
struct TYPE_11__ {TYPE_2__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DD_FIELD_FILESYSTEM_COUNT ; 
 int /*<<< orphan*/  EALREADY ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_FS_SS_LIMIT ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(void *arg, dmu_tx_t *tx)
{
	char *ddname = (char *)arg;
	dsl_pool_t *dp = FUNC1(tx);
	dsl_dataset_t *ds;
	dsl_dir_t *dd;
	int error;

	error = FUNC2(dp, ddname, FTAG, &ds);
	if (error != 0)
		return (error);

	if (!FUNC6(dp->dp_spa, SPA_FEATURE_FS_SS_LIMIT)) {
		FUNC3(ds, FTAG);
		return (FUNC0(ENOTSUP));
	}

	dd = ds->ds_dir;
	if (FUNC5(dp->dp_spa, SPA_FEATURE_FS_SS_LIMIT) &&
	    FUNC4(dd) &&
	    FUNC7(dp->dp_meta_objset, dd->dd_object,
	    DD_FIELD_FILESYSTEM_COUNT) == 0) {
		FUNC3(ds, FTAG);
		return (FUNC0(EALREADY));
	}

	FUNC3(ds, FTAG);
	return (0);
}