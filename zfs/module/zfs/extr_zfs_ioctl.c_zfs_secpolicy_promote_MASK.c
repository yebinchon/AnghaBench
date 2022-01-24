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
struct TYPE_12__ {char* zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  dd_pool; } ;
typedef  TYPE_2__ dsl_dir_t ;
struct TYPE_14__ {TYPE_2__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_15__ {int /*<<< orphan*/  dd_origin_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_MOUNT ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_PROMOTE ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC4 (TYPE_2__*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	dsl_pool_t *dp;
	dsl_dataset_t *clone;
	int error;

	error = FUNC7(zc->zc_name,
	    ZFS_DELEG_PERM_PROMOTE, cr);
	if (error != 0)
		return (error);

	error = FUNC5(zc->zc_name, FTAG, &dp);
	if (error != 0)
		return (error);

	error = FUNC0(dp, zc->zc_name, FTAG, &clone);

	if (error == 0) {
		char parentname[ZFS_MAX_DATASET_NAME_LEN];
		dsl_dataset_t *origin = NULL;
		dsl_dir_t *dd;
		dd = clone->ds_dir;

		error = FUNC1(dd->dd_pool,
		    FUNC4(dd)->dd_origin_obj, FTAG, &origin);
		if (error != 0) {
			FUNC3(clone, FTAG);
			FUNC6(dp, FTAG);
			return (error);
		}

		error = FUNC8(zc->zc_name, clone,
		    ZFS_DELEG_PERM_MOUNT, cr);

		FUNC2(origin, parentname);
		if (error == 0) {
			error = FUNC8(parentname, origin,
			    ZFS_DELEG_PERM_PROMOTE, cr);
		}
		FUNC3(clone, FTAG);
		FUNC3(origin, FTAG);
	}
	FUNC6(dp, FTAG);
	return (error);
}