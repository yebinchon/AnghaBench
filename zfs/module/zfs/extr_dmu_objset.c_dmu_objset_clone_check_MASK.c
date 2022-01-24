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
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dir_t ;
struct TYPE_5__ {int /*<<< orphan*/  ds_is_snapshot; } ;
typedef  TYPE_1__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_6__ {int /*<<< orphan*/  doca_origin; int /*<<< orphan*/  doca_cred; int /*<<< orphan*/  doca_clone; } ;
typedef  TYPE_2__ dmu_objset_clone_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDQUOT ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_FILESYSTEM_LIMIT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(void *arg, dmu_tx_t *tx)
{
	dmu_objset_clone_arg_t *doca = arg;
	dsl_dir_t *pdd;
	const char *tail;
	int error;
	dsl_dataset_t *origin;
	dsl_pool_t *dp = FUNC1(tx);

	if (FUNC7(doca->doca_clone, '@') != NULL)
		return (FUNC0(EINVAL));

	if (FUNC8(doca->doca_clone) >= ZFS_MAX_DATASET_NAME_LEN)
		return (FUNC0(ENAMETOOLONG));

	error = FUNC4(dp, doca->doca_clone, FTAG, &pdd, &tail);
	if (error != 0)
		return (error);
	if (tail == NULL) {
		FUNC5(pdd, FTAG);
		return (FUNC0(EEXIST));
	}

	error = FUNC6(pdd, 1, ZFS_PROP_FILESYSTEM_LIMIT, NULL,
	    doca->doca_cred);
	if (error != 0) {
		FUNC5(pdd, FTAG);
		return (FUNC0(EDQUOT));
	}

	error = FUNC2(dp, doca->doca_origin, FTAG, &origin);
	if (error != 0) {
		FUNC5(pdd, FTAG);
		return (error);
	}

	/* You can only clone snapshots, not the head datasets. */
	if (!origin->ds_is_snapshot) {
		FUNC3(origin, FTAG);
		FUNC5(pdd, FTAG);
		return (FUNC0(EINVAL));
	}

	FUNC3(origin, FTAG);
	FUNC5(pdd, FTAG);

	return (0);
}