#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ od_object; } ;
typedef  TYPE_1__ ztest_od_t ;
struct TYPE_10__ {int /*<<< orphan*/ * zd_os; } ;
typedef  TYPE_2__ ztest_ds_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OT_ZAP_OTHER ; 
 int EEXIST ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  TXG_MIGHTWAIT ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,char*,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(ztest_ds_t *zd, uint64_t id)
{
	objset_t *os = zd->zd_os;
	ztest_od_t *od;
	uint64_t object, txg;
	int i;

	od = FUNC5(sizeof (ztest_od_t), UMEM_NOFAIL);
	FUNC9(od, id, FTAG, 0, DMU_OT_ZAP_OTHER, 0, 0, 0);

	if (FUNC8(zd, od, sizeof (ztest_od_t),
	    !FUNC10(2)) != 0)
		goto out;
	object = od->od_object;

	/*
	 * Add entries to this ZAP and make sure it spills over
	 * and gets upgraded to a fatzap. Also, since we are adding
	 * 2050 entries we should see ptrtbl growth and leaf-block split.
	 */
	for (i = 0; i < 2050; i++) {
		char name[ZFS_MAX_DATASET_NAME_LEN];
		uint64_t value = i;
		dmu_tx_t *tx;
		int error;

		(void) FUNC4(name, sizeof (name), "fzap-%llu-%llu",
		    (u_longlong_t)id, (u_longlong_t)value);

		tx = FUNC2(os);
		FUNC3(tx, object, B_TRUE, name);
		txg = FUNC11(tx, TXG_MIGHTWAIT, FTAG);
		if (txg == 0)
			goto out;
		error = FUNC7(os, object, name, sizeof (uint64_t), 1,
		    &value, tx);
		FUNC0(error == 0 || error == EEXIST);
		FUNC1(tx);
	}
out:
	FUNC6(od, sizeof (ztest_od_t));
}