#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ zo_mmp_test; } ;
typedef  TYPE_1__ ztest_shared_opts_t ;
typedef  int /*<<< orphan*/  ztest_ds_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_13__ {int /*<<< orphan*/  spa_props_lock; int /*<<< orphan*/  spa_multihost; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ zfs_multihost_fail_intervals ; 
 TYPE_1__ ztest_opts ; 
 TYPE_2__* ztest_spa ; 

void
FUNC11(ztest_ds_t *zd, uint64_t id)
{
	ztest_shared_opts_t *zo = &ztest_opts;
	spa_t *spa = ztest_spa;

	if (zo->zo_mmp_test)
		return;

	/*
	 * Since enabling MMP involves setting a property, it could not be done
	 * while the pool is suspended.
	 */
	if (FUNC9(spa))
		return;

	FUNC5(spa, SCL_CONFIG, FTAG, RW_READER);
	FUNC3(&spa->spa_props_lock);

	zfs_multihost_fail_intervals = 0;

	if (!FUNC8(spa)) {
		spa->spa_multihost = B_TRUE;
		FUNC1(spa);
	}

	FUNC4(&spa->spa_props_lock);
	FUNC6(spa, SCL_CONFIG, FTAG);

	FUNC10(FUNC7(spa), 0);
	FUNC0();
	FUNC10(FUNC7(spa), 0);

	FUNC5(spa, SCL_CONFIG, FTAG, RW_READER);
	FUNC3(&spa->spa_props_lock);

	if (FUNC8(spa)) {
		FUNC2(spa);
		spa->spa_multihost = B_FALSE;
	}

	FUNC4(&spa->spa_props_lock);
	FUNC6(spa, SCL_CONFIG, FTAG);
}