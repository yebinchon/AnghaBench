#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_20__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int zlp_rewind; scalar_t__ zlp_txg; } ;
typedef  TYPE_1__ zpool_load_policy_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int uint64_t ;
struct TYPE_27__ {void* sav_sync; int /*<<< orphan*/ * sav_config; } ;
struct TYPE_28__ {int spa_import_flags; TYPE_20__ spa_l2cache; TYPE_20__ spa_spares; scalar_t__ spa_autoreplace; int /*<<< orphan*/  spa_load_info; scalar_t__ spa_load_txg; scalar_t__ spa_last_ubsync_txg; int /*<<< orphan*/  spa_config_source; } ;
typedef  TYPE_2__ spa_t ;
typedef  scalar_t__ spa_load_state_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  longlong_t ;

/* Variables and functions */
 int B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  DATA_TYPE_NVLIST_ARRAY ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ESC_ZFS_POOL_IMPORT ; 
 int FREAD ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_ASYNC_AUTOEXPAND ; 
 int /*<<< orphan*/  SPA_CONFIG_SRC_TRYIMPORT ; 
 int /*<<< orphan*/  SPA_CONFIG_UPDATE_POOL ; 
 scalar_t__ SPA_LOAD_IMPORT ; 
 scalar_t__ SPA_LOAD_RECOVER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ZFS_IMPORT_VERBATIM ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int ZPOOL_DO_REWIND ; 
 int /*<<< orphan*/  ZPOOL_PROP_ALTROOT ; 
 int /*<<< orphan*/  ZPOOL_PROP_READONLY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC14 (char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_20__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC26 (TYPE_2__*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC29 (char*) ; 
 int spa_mode_global ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int FUNC30 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_2__*,int,void*) ; 
 scalar_t__ FUNC34 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC35 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_2__*,char*,void*) ; 

int
FUNC39(char *pool, nvlist_t *config, nvlist_t *props, uint64_t flags)
{
	spa_t *spa;
	char *altroot = NULL;
	spa_load_state_t state = SPA_LOAD_IMPORT;
	zpool_load_policy_t policy;
	uint64_t mode = spa_mode_global;
	uint64_t readonly = B_FALSE;
	int error;
	nvlist_t *nvroot;
	nvlist_t **spares, **l2cache;
	uint_t nspares, nl2cache;

	/*
	 * If a pool with this name exists, return failure.
	 */
	FUNC2(&spa_namespace_lock);
	if (FUNC29(pool) != NULL) {
		FUNC3(&spa_namespace_lock);
		return (FUNC0(EEXIST));
	}

	/*
	 * Create and initialize the spa structure.
	 */
	(void) FUNC10(props,
	    FUNC37(ZPOOL_PROP_ALTROOT), &altroot);
	(void) FUNC11(props,
	    FUNC37(ZPOOL_PROP_READONLY), &readonly);
	if (readonly)
		mode = FREAD;
	spa = FUNC14(pool, config, altroot);
	spa->spa_import_flags = flags;

	/*
	 * Verbatim import - Take a pool and insert it into the namespace
	 * as if it had been loaded at boot.
	 */
	if (spa->spa_import_flags & ZFS_IMPORT_VERBATIM) {
		if (props != NULL)
			FUNC22(spa, props, B_FALSE);

		FUNC33(spa, B_FALSE, B_TRUE);
		FUNC24(spa, NULL, NULL, ESC_ZFS_POOL_IMPORT);
		FUNC35("spa_import: verbatim import of %s", pool);
		FUNC3(&spa_namespace_lock);
		return (0);
	}

	FUNC13(spa, mode);

	/*
	 * Don't start async tasks until we know everything is healthy.
	 */
	FUNC17(spa);

	FUNC36(config, &policy);
	if (policy.zlp_rewind & ZPOOL_DO_REWIND)
		state = SPA_LOAD_RECOVER;

	spa->spa_config_source = SPA_CONFIG_SRC_TRYIMPORT;

	if (state != SPA_LOAD_RECOVER) {
		spa->spa_last_ubsync_txg = spa->spa_load_txg = 0;
		FUNC35("spa_import: importing %s", pool);
	} else {
		FUNC35("spa_import: importing %s, max_txg=%lld "
		    "(RECOVERY MODE)", pool, (longlong_t)policy.zlp_txg);
	}
	error = FUNC26(spa, state, policy.zlp_txg, policy.zlp_rewind);

	/*
	 * Propagate anything learned while loading the pool and pass it
	 * back to caller (i.e. rewind info, missing devices, etc).
	 */
	FUNC1(FUNC4(config, ZPOOL_CONFIG_LOAD_INFO,
	    spa->spa_load_info) == 0);

	FUNC19(spa, SCL_ALL, FTAG, RW_WRITER);
	/*
	 * Toss any existing sparelist, as it doesn't have any validity
	 * anymore, and conflicts with spa_has_spare().
	 */
	if (spa->spa_spares.sav_config) {
		FUNC7(spa->spa_spares.sav_config);
		spa->spa_spares.sav_config = NULL;
		FUNC28(spa);
	}
	if (spa->spa_l2cache.sav_config) {
		FUNC7(spa->spa_l2cache.sav_config);
		spa->spa_l2cache.sav_config = NULL;
		FUNC27(spa);
	}

	FUNC1(FUNC8(config, ZPOOL_CONFIG_VDEV_TREE,
	    &nvroot) == 0);
	FUNC20(spa, SCL_ALL, FTAG);

	if (props != NULL)
		FUNC22(spa, props, B_FALSE);

	if (error != 0 || (props && FUNC34(spa) &&
	    (error = FUNC30(spa, props)))) {
		FUNC32(spa);
		FUNC23(spa);
		FUNC31(spa);
		FUNC3(&spa_namespace_lock);
		return (error);
	}

	FUNC16(spa);

	/*
	 * Override any spares and level 2 cache devices as specified by
	 * the user, as these may have correct device names/devids, etc.
	 */
	if (FUNC9(nvroot, ZPOOL_CONFIG_SPARES,
	    &spares, &nspares) == 0) {
		if (spa->spa_spares.sav_config)
			FUNC1(FUNC12(spa->spa_spares.sav_config,
			    ZPOOL_CONFIG_SPARES, DATA_TYPE_NVLIST_ARRAY) == 0);
		else
			FUNC1(FUNC6(&spa->spa_spares.sav_config,
			    NV_UNIQUE_NAME, KM_SLEEP) == 0);
		FUNC1(FUNC5(spa->spa_spares.sav_config,
		    ZPOOL_CONFIG_SPARES, spares, nspares) == 0);
		FUNC19(spa, SCL_ALL, FTAG, RW_WRITER);
		FUNC28(spa);
		FUNC20(spa, SCL_ALL, FTAG);
		spa->spa_spares.sav_sync = B_TRUE;
	}
	if (FUNC9(nvroot, ZPOOL_CONFIG_L2CACHE,
	    &l2cache, &nl2cache) == 0) {
		if (spa->spa_l2cache.sav_config)
			FUNC1(FUNC12(spa->spa_l2cache.sav_config,
			    ZPOOL_CONFIG_L2CACHE, DATA_TYPE_NVLIST_ARRAY) == 0);
		else
			FUNC1(FUNC6(&spa->spa_l2cache.sav_config,
			    NV_UNIQUE_NAME, KM_SLEEP) == 0);
		FUNC1(FUNC5(spa->spa_l2cache.sav_config,
		    ZPOOL_CONFIG_L2CACHE, l2cache, nl2cache) == 0);
		FUNC19(spa, SCL_ALL, FTAG, RW_WRITER);
		FUNC27(spa);
		FUNC20(spa, SCL_ALL, FTAG);
		spa->spa_l2cache.sav_sync = B_TRUE;
	}

	/*
	 * Check for any removed devices.
	 */
	if (spa->spa_autoreplace) {
		FUNC18(&spa->spa_spares);
		FUNC18(&spa->spa_l2cache);
	}

	if (FUNC34(spa)) {
		/*
		 * Update the config cache to include the newly-imported pool.
		 */
		FUNC21(spa, SPA_CONFIG_UPDATE_POOL);
	}

	/*
	 * It's possible that the pool was expanded while it was exported.
	 * We kick off an async task to handle this for us.
	 */
	FUNC15(spa, SPA_ASYNC_AUTOEXPAND);

	FUNC25(spa, "import", NULL);

	FUNC24(spa, NULL, NULL, ESC_ZFS_POOL_IMPORT);

	FUNC3(&spa_namespace_lock);

	FUNC38(spa, pool, B_TRUE);

	return (0);
}