#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  dd_pool; } ;
typedef  TYPE_1__ dsl_dir_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_10__ {int /*<<< orphan*/  doca_cred; int /*<<< orphan*/  doca_dcp; int /*<<< orphan*/  doca_name; } ;
typedef  TYPE_2__ dmu_objset_create_arg_t ;
struct TYPE_11__ {int /*<<< orphan*/  dd_head_dataset_obj; } ;

/* Variables and functions */
 scalar_t__ DMU_OST_ZFS ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_ERR_WRONG_PARENT ; 
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_FILESYSTEM_LIMIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,char const**) ; 
 TYPE_5__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(void *arg, dmu_tx_t *tx)
{
	dmu_objset_create_arg_t *doca = arg;
	dsl_pool_t *dp = FUNC5(tx);
	dsl_dir_t *pdd;
	dsl_dataset_t *parentds;
	objset_t *parentos;
	const char *tail;
	int error;

	if (FUNC12(doca->doca_name, '@') != NULL)
		return (FUNC0(EINVAL));

	if (FUNC13(doca->doca_name) >= ZFS_MAX_DATASET_NAME_LEN)
		return (FUNC0(ENAMETOOLONG));

	if (FUNC1(doca->doca_name) != 0)
		return (FUNC0(ENAMETOOLONG));

	error = FUNC8(dp, doca->doca_name, FTAG, &pdd, &tail);
	if (error != 0)
		return (error);
	if (tail == NULL) {
		FUNC10(pdd, FTAG);
		return (FUNC0(EEXIST));
	}

	error = FUNC2(pdd, doca->doca_dcp, NULL);
	if (error != 0) {
		FUNC10(pdd, FTAG);
		return (error);
	}

	error = FUNC11(pdd, 1, ZFS_PROP_FILESYSTEM_LIMIT, NULL,
	    doca->doca_cred);
	if (error != 0) {
		FUNC10(pdd, FTAG);
		return (error);
	}

	/* can't create below anything but filesystems (eg. no ZVOLs) */
	error = FUNC6(pdd->dd_pool,
	    FUNC9(pdd)->dd_head_dataset_obj, FTAG, &parentds);
	if (error != 0) {
		FUNC10(pdd, FTAG);
		return (error);
	}
	error = FUNC3(parentds, &parentos);
	if (error != 0) {
		FUNC7(parentds, FTAG);
		FUNC10(pdd, FTAG);
		return (error);
	}
	if (FUNC4(parentos) != DMU_OST_ZFS) {
		FUNC7(parentds, FTAG);
		FUNC10(pdd, FTAG);
		return (FUNC0(ZFS_ERR_WRONG_PARENT));
	}
	FUNC7(parentds, FTAG);
	FUNC10(pdd, FTAG);

	return (error);
}