#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {char* vdev_path; scalar_t__ vdev_islog; } ;
typedef  TYPE_3__ vdev_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sysevent_t ;
struct TYPE_22__ {void* sav_sync; int /*<<< orphan*/  sav_config; int /*<<< orphan*/ * sav_vdevs; } ;
struct TYPE_21__ {void* sav_sync; int /*<<< orphan*/  sav_config; int /*<<< orphan*/ * sav_vdevs; } ;
struct TYPE_24__ {TYPE_2__ spa_l2cache; TYPE_1__ spa_spares; } ;
typedef  TYPE_4__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ESC_ZFS_VDEV_REMOVE_AUX ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_POOL_CHECKPOINT ; 
 char* VDEV_TYPE_L2CACHE ; 
 char* VDEV_TYPE_LOG ; 
 char* VDEV_TYPE_SPARE ; 
 int ZFS_ERR_CHECKPOINT_EXISTS ; 
 int ZFS_ERR_DISCARDING_CHECKPOINT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 TYPE_3__* FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int FUNC18 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC22 (TYPE_4__*) ; 

int
FUNC23(spa_t *spa, uint64_t guid, boolean_t unspare)
{
	vdev_t *vd;
	nvlist_t **spares, **l2cache, *nv;
	uint64_t txg = 0;
	uint_t nspares, nl2cache;
	int error = 0, error_log;
	boolean_t locked = FUNC1(&spa_namespace_lock);
	sysevent_t *ev = NULL;
	char *vd_type = NULL, *vd_path = NULL, *vd_path_log = NULL;

	FUNC0(FUNC22(spa));

	if (!locked)
		txg = FUNC17(spa);

	FUNC0(FUNC1(&spa_namespace_lock));
	if (FUNC7(spa, SPA_FEATURE_POOL_CHECKPOINT)) {
		error = (FUNC8(spa)) ?
		    ZFS_ERR_CHECKPOINT_EXISTS : ZFS_ERR_DISCARDING_CHECKPOINT;

		if (!locked)
			return (FUNC18(spa, NULL, txg, error));

		return (error);
	}

	vd = FUNC12(spa, guid, B_FALSE);

	if (spa->spa_spares.sav_vdevs != NULL &&
	    FUNC4(spa->spa_spares.sav_config,
	    ZPOOL_CONFIG_SPARES, &spares, &nspares) == 0 &&
	    (nv = FUNC14(spares, nspares, guid)) != NULL) {
		/*
		 * Only remove the hot spare if it's not currently in use
		 * in this pool.
		 */
		if (vd == NULL || unspare) {
			if (vd == NULL)
				vd = FUNC12(spa, guid, B_TRUE);
			ev = FUNC5(spa, vd, NULL,
			    ESC_ZFS_VDEV_REMOVE_AUX);

			vd_type = VDEV_TYPE_SPARE;
			vd_path = FUNC3(nv, ZPOOL_CONFIG_PATH);
			FUNC19(spa->spa_spares.sav_config,
			    ZPOOL_CONFIG_SPARES, spares, nspares, nv);
			FUNC11(spa);
			spa->spa_spares.sav_sync = B_TRUE;
		} else {
			error = FUNC2(EBUSY);
		}
	} else if (spa->spa_l2cache.sav_vdevs != NULL &&
	    FUNC4(spa->spa_l2cache.sav_config,
	    ZPOOL_CONFIG_L2CACHE, &l2cache, &nl2cache) == 0 &&
	    (nv = FUNC14(l2cache, nl2cache, guid)) != NULL) {
		vd_type = VDEV_TYPE_L2CACHE;
		vd_path = FUNC3(nv, ZPOOL_CONFIG_PATH);
		/*
		 * Cache devices can always be removed.
		 */
		vd = FUNC12(spa, guid, B_TRUE);
		ev = FUNC5(spa, vd, NULL, ESC_ZFS_VDEV_REMOVE_AUX);
		FUNC19(spa->spa_l2cache.sav_config,
		    ZPOOL_CONFIG_L2CACHE, l2cache, nl2cache, nv);
		FUNC10(spa);
		spa->spa_l2cache.sav_sync = B_TRUE;
	} else if (vd != NULL && vd->vdev_islog) {
		FUNC0(!locked);
		vd_type = VDEV_TYPE_LOG;
		vd_path = (vd->vdev_path != NULL) ? vd->vdev_path : "-";
		error = FUNC20(vd, &txg);
	} else if (vd != NULL) {
		FUNC0(!locked);
		error = FUNC21(vd, &txg);
	} else {
		/*
		 * There is no vdev of any kind with the specified guid.
		 */
		error = FUNC2(ENOENT);
	}

	if (vd_path != NULL)
		vd_path_log = FUNC15(vd_path);

	error_log = error;

	if (!locked)
		error = FUNC18(spa, NULL, txg, error);

	/*
	 * Logging must be done outside the spa config lock. Otherwise,
	 * this code path could end up holding the spa config lock while
	 * waiting for a txg_sync so it can write to the internal log.
	 * Doing that would prevent the txg sync from actually happening,
	 * causing a deadlock.
	 */
	if (error_log == 0 && vd_type != NULL && vd_path_log != NULL) {
		FUNC9(spa, "vdev remove", NULL,
		    "%s vdev (%s) %s", FUNC13(spa), vd_type, vd_path_log);
	}
	if (vd_path_log != NULL)
		FUNC16(vd_path_log);

	if (ev != NULL)
		FUNC6(ev);

	return (error);
}