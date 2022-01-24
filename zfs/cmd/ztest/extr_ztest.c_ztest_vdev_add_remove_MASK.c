#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int zs_vdev_next_leaf; scalar_t__ zs_mirrors; scalar_t__ zs_splits; } ;
typedef  TYPE_2__ ztest_shared_t ;
typedef  int /*<<< orphan*/  ztest_ds_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_9__ {TYPE_1__* mg_vd; struct TYPE_9__* mg_next; } ;
typedef  TYPE_3__ metaslab_group_t ;
struct TYPE_11__ {TYPE_3__* mc_rotor; } ;
struct TYPE_10__ {int zo_raidz; int /*<<< orphan*/  zo_vdev_size; scalar_t__ zo_mmp_test; } ;
struct TYPE_7__ {int vdev_guid; int /*<<< orphan*/  vdev_islog; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
#define  EACCES 133 
#define  EBUSY 132 
#define  EEXIST 131 
#define  ENOSPC 130 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_VDEV ; 
#define  ZFS_ERR_CHECKPOINT_EXISTS 129 
#define  ZFS_ERR_DISCARDING_CHECKPOINT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ztest_name_lock ; 
 TYPE_5__ ztest_opts ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 TYPE_2__* ztest_shared ; 
 int /*<<< orphan*/ * ztest_spa ; 
 int /*<<< orphan*/  ztest_vdev_lock ; 

void
FUNC17(ztest_ds_t *zd, uint64_t id)
{
	ztest_shared_t *zs = ztest_shared;
	spa_t *spa = ztest_spa;
	uint64_t leaves;
	uint64_t guid;
	nvlist_t *nvroot;
	int error;

	if (ztest_opts.zo_mmp_test)
		return;

	FUNC3(&ztest_vdev_lock);
	leaves = FUNC0(zs->zs_mirrors + zs->zs_splits, 1) * ztest_opts.zo_raidz;

	FUNC8(spa, SCL_VDEV, FTAG, RW_READER);

	ztest_shared->zs_vdev_next_leaf = FUNC12(spa) * leaves;

	/*
	 * If we have slogs then remove them 1/4 of the time.
	 */
	if (FUNC10(spa) && FUNC15(4) == 0) {
		metaslab_group_t *mg;

		/*
		 * find the first real slog in log allocation class
		 */
		mg =  FUNC11(spa)->mc_rotor;
		while (!mg->mg_vd->vdev_islog)
			mg = mg->mg_next;

		guid = mg->mg_vd->vdev_guid;

		FUNC9(spa, SCL_VDEV, FTAG);

		/*
		 * We have to grab the zs_name_lock as writer to
		 * prevent a race between removing a slog (dmu_objset_find)
		 * and destroying a dataset. Removing the slog will
		 * grab a reference on the dataset which may cause
		 * dsl_destroy_head() to fail with EBUSY thus
		 * leaving the dataset in an inconsistent state.
		 */
		FUNC7(&ztest_name_lock);
		error = FUNC14(spa, guid, B_FALSE);
		FUNC6(&ztest_name_lock);

		switch (error) {
		case 0:
		case EEXIST:	/* Generic zil_reset() error */
		case EBUSY:	/* Replay required */
		case EACCES:	/* Crypto key not loaded */
		case ZFS_ERR_CHECKPOINT_EXISTS:
		case ZFS_ERR_DISCARDING_CHECKPOINT:
			break;
		default:
			FUNC1(0, "spa_vdev_remove() = %d", error);
		}
	} else {
		FUNC9(spa, SCL_VDEV, FTAG);

		/*
		 * Make 1/4 of the devices be log devices
		 */
		nvroot = FUNC2(NULL, NULL, NULL,
		    ztest_opts.zo_vdev_size, 0, (FUNC15(4) == 0) ?
		    "log" : NULL, ztest_opts.zo_raidz, zs->zs_mirrors, 1);

		error = FUNC13(spa, nvroot);
		FUNC5(nvroot);

		switch (error) {
		case 0:
			break;
		case ENOSPC:
			FUNC16("spa_vdev_add");
			break;
		default:
			FUNC1(0, "spa_vdev_add() = %d", error);
		}
	}

	FUNC4(&ztest_vdev_lock);
}