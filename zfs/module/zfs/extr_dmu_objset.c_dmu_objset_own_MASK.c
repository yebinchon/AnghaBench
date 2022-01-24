#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_13__ {TYPE_1__* dp_spa; } ;
typedef  TYPE_3__ dsl_pool_t ;
struct TYPE_14__ {TYPE_2__* ds_dir; } ;
typedef  TYPE_4__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  ds_hold_flags_t ;
typedef  int /*<<< orphan*/  dmu_objset_type_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_12__ {scalar_t__ dd_crypto_obj; } ;
struct TYPE_11__ {int /*<<< orphan*/  spa_claiming; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS_HOLD_FLAG_DECRYPT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,void*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (TYPE_3__*,char const*,int /*<<< orphan*/ ,void*,TYPE_4__**) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int
FUNC8(const char *name, dmu_objset_type_t type,
    boolean_t readonly, boolean_t decrypt, void *tag, objset_t **osp)
{
	dsl_pool_t *dp;
	dsl_dataset_t *ds;
	int err;
	ds_hold_flags_t flags = (decrypt) ? DS_HOLD_FLAG_DECRYPT : 0;

	err = FUNC6(name, FTAG, &dp);
	if (err != 0)
		return (err);
	err = FUNC5(dp, name, flags, tag, &ds);
	if (err != 0) {
		FUNC7(dp, FTAG);
		return (err);
	}
	err = FUNC1(ds, type, readonly, decrypt, tag, osp);
	if (err != 0) {
		FUNC4(ds, flags, tag);
		FUNC7(dp, FTAG);
		return (err);
	}

	/*
	 * User accounting requires the dataset to be decrypted and rw.
	 * We also don't begin user accounting during claiming to help
	 * speed up pool import times and to keep this txg reserved
	 * completely for recovery work.
	 */
	if ((FUNC3(*osp) ||
	    FUNC2(*osp)) &&
	    !readonly && !dp->dp_spa->spa_claiming &&
	    (ds->ds_dir->dd_crypto_obj == 0 || decrypt))
		FUNC0(*osp);

	FUNC7(dp, FTAG);
	return (0);
}