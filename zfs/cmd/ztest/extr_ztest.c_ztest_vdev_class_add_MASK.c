#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int zs_mirrors; int zs_vdev_next_leaf; scalar_t__ zs_splits; } ;
typedef  TYPE_1__ ztest_shared_t ;
struct TYPE_10__ {int /*<<< orphan*/  zd_name; } ;
typedef  TYPE_2__ ztest_ds_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_11__ {int mc_groups; } ;
typedef  TYPE_3__ metaslab_class_t ;
struct TYPE_12__ {scalar_t__ zo_special_vdevs; int zo_raidz; int zo_verbose; int /*<<< orphan*/  zo_vdev_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_VDEV ; 
 int /*<<< orphan*/  SPA_FEATURE_ALLOCATION_CLASSES ; 
 char* VDEV_ALLOC_BIAS_DEDUP ; 
 char* VDEV_ALLOC_BIAS_SPECIAL ; 
 int /*<<< orphan*/  ZFS_PROP_SPECIAL_SMALL_BLOCKS ; 
 scalar_t__ ZTEST_VDEV_CLASS_OFF ; 
 scalar_t__ ZTEST_VDEV_CLASS_RND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_6__ ztest_opts ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 TYPE_1__* ztest_shared ; 
 int /*<<< orphan*/ * ztest_spa ; 
 int /*<<< orphan*/  ztest_vdev_lock ; 

void
FUNC18(ztest_ds_t *zd, uint64_t id)
{
	ztest_shared_t *zs = ztest_shared;
	spa_t *spa = ztest_spa;
	uint64_t leaves;
	nvlist_t *nvroot;
	const char *class = (FUNC16(2) == 0) ?
	    VDEV_ALLOC_BIAS_SPECIAL : VDEV_ALLOC_BIAS_DEDUP;
	int error;

	/*
	 * By default add a special vdev 50% of the time
	 */
	if ((ztest_opts.zo_special_vdevs == ZTEST_VDEV_CLASS_OFF) ||
	    (ztest_opts.zo_special_vdevs == ZTEST_VDEV_CLASS_RND &&
	    FUNC16(2) == 0)) {
		return;
	}

	FUNC3(&ztest_vdev_lock);

	/* Only test with mirrors */
	if (zs->zs_mirrors < 2) {
		FUNC4(&ztest_vdev_lock);
		return;
	}

	/* requires feature@allocation_classes */
	if (!FUNC10(spa, SPA_FEATURE_ALLOCATION_CLASSES)) {
		FUNC4(&ztest_vdev_lock);
		return;
	}

	leaves = FUNC0(zs->zs_mirrors + zs->zs_splits, 1) * ztest_opts.zo_raidz;

	FUNC7(spa, SCL_VDEV, FTAG, RW_READER);
	ztest_shared->zs_vdev_next_leaf = FUNC11(spa) * leaves;
	FUNC8(spa, SCL_VDEV, FTAG);

	nvroot = FUNC2(NULL, NULL, NULL, ztest_opts.zo_vdev_size, 0,
	    class, ztest_opts.zo_raidz, zs->zs_mirrors, 1);

	error = FUNC13(spa, nvroot);
	FUNC5(nvroot);

	if (error == ENOSPC)
		FUNC17("spa_vdev_add");
	else if (error != 0)
		FUNC1(0, "spa_vdev_add() = %d", error);

	/*
	 * 50% of the time allow small blocks in the special class
	 */
	if (error == 0 &&
	    FUNC12(spa)->mc_groups == 1 && FUNC16(2) == 0) {
		if (ztest_opts.zo_verbose >= 3)
			(void) FUNC6("Enabling special VDEV small blocks\n");
		(void) FUNC15(zd->zd_name,
		    ZFS_PROP_SPECIAL_SMALL_BLOCKS, 32768, B_FALSE);
	}

	FUNC4(&ztest_vdev_lock);

	if (ztest_opts.zo_verbose >= 3) {
		metaslab_class_t *mc;

		if (FUNC14(class, VDEV_ALLOC_BIAS_SPECIAL) == 0)
			mc = FUNC12(spa);
		else
			mc = FUNC9(spa);
		(void) FUNC6("Added a %s mirrored vdev (of %d)\n",
		    class, (int)mc->mc_groups);
	}
}