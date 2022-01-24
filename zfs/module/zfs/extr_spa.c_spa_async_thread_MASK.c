#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_24__ {int sav_count; int /*<<< orphan*/ * sav_vdevs; } ;
struct TYPE_23__ {int sav_count; int /*<<< orphan*/ * sav_vdevs; } ;
struct TYPE_25__ {int spa_async_tasks; int /*<<< orphan*/  spa_async_lock; int /*<<< orphan*/  spa_async_cv; int /*<<< orphan*/ * spa_async_thread; int /*<<< orphan*/  spa_root_vdev; TYPE_2__ spa_spares; TYPE_1__ spa_l2cache; int /*<<< orphan*/  spa_sync_on; TYPE_4__* spa_dsl_pool; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_26__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_4__ dsl_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  SCL_NONE ; 
 int SPA_ASYNC_AUTOEXPAND ; 
 int SPA_ASYNC_AUTOTRIM_RESTART ; 
 int SPA_ASYNC_CONFIG_UPDATE ; 
 int SPA_ASYNC_INITIALIZE_RESTART ; 
 int SPA_ASYNC_PROBE ; 
 int SPA_ASYNC_REMOVE ; 
 int SPA_ASYNC_RESILVER ; 
 int SPA_ASYNC_RESILVER_DONE ; 
 int SPA_ASYNC_TRIM_RESTART ; 
 int /*<<< orphan*/  SPA_CONFIG_UPDATE_POOL ; 
 int /*<<< orphan*/  SPA_FEATURE_RESILVER_DEFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC27(void *arg)
{
	spa_t *spa = (spa_t *)arg;
	dsl_pool_t *dp = spa->spa_dsl_pool;
	int tasks;

	FUNC0(spa->spa_sync_on);

	FUNC5(&spa->spa_async_lock);
	tasks = spa->spa_async_tasks;
	spa->spa_async_tasks = 0;
	FUNC6(&spa->spa_async_lock);

	/*
	 * See if the config needs to be updated.
	 */
	if (tasks & SPA_ASYNC_CONFIG_UPDATE) {
		uint64_t old_space, new_space;

		FUNC5(&spa_namespace_lock);
		old_space = FUNC4(FUNC17(spa));
		old_space += FUNC4(FUNC18(spa));
		old_space += FUNC4(FUNC13(spa));

		FUNC12(spa, SPA_CONFIG_UPDATE_POOL);

		new_space = FUNC4(FUNC17(spa));
		new_space += FUNC4(FUNC18(spa));
		new_space += FUNC4(FUNC13(spa));
		FUNC6(&spa_namespace_lock);

		/*
		 * If the pool grew as a result of the config update,
		 * then log an internal history event.
		 */
		if (new_space != old_space) {
			FUNC15(spa, "vdev online", NULL,
			    "pool '%s' size: %llu(+%llu)",
			    FUNC16(spa), (u_longlong_t)new_space,
			    (u_longlong_t)(new_space - old_space));
		}
	}

	/*
	 * See if any devices need to be marked REMOVED.
	 */
	if (tasks & SPA_ASYNC_REMOVE) {
		FUNC21(spa, SCL_NONE);
		FUNC9(spa, spa->spa_root_vdev);
		for (int i = 0; i < spa->spa_l2cache.sav_count; i++)
			FUNC9(spa, spa->spa_l2cache.sav_vdevs[i]);
		for (int i = 0; i < spa->spa_spares.sav_count; i++)
			FUNC9(spa, spa->spa_spares.sav_vdevs[i]);
		(void) FUNC22(spa, NULL, 0);
	}

	if ((tasks & SPA_ASYNC_AUTOEXPAND) && !FUNC19(spa)) {
		FUNC10(spa, SCL_CONFIG, FTAG, RW_READER);
		FUNC7(spa, spa->spa_root_vdev);
		FUNC11(spa, SCL_CONFIG, FTAG);
	}

	/*
	 * See if any devices need to be probed.
	 */
	if (tasks & SPA_ASYNC_PROBE) {
		FUNC21(spa, SCL_NONE);
		FUNC8(spa, spa->spa_root_vdev);
		(void) FUNC22(spa, NULL, 0);
	}

	/*
	 * If any devices are done replacing, detach them.
	 */
	if (tasks & SPA_ASYNC_RESILVER_DONE)
		FUNC20(spa);

	/*
	 * Kick off a resilver.
	 */
	if (tasks & SPA_ASYNC_RESILVER &&
	    (!FUNC3(dp) ||
	    !FUNC14(dp->dp_spa, SPA_FEATURE_RESILVER_DEFER)))
		FUNC2(dp, 0);

	if (tasks & SPA_ASYNC_INITIALIZE_RESTART) {
		FUNC5(&spa_namespace_lock);
		FUNC10(spa, SCL_CONFIG, FTAG, RW_READER);
		FUNC25(spa->spa_root_vdev);
		FUNC11(spa, SCL_CONFIG, FTAG);
		FUNC6(&spa_namespace_lock);
	}

	if (tasks & SPA_ASYNC_TRIM_RESTART) {
		FUNC5(&spa_namespace_lock);
		FUNC10(spa, SCL_CONFIG, FTAG, RW_READER);
		FUNC26(spa->spa_root_vdev);
		FUNC11(spa, SCL_CONFIG, FTAG);
		FUNC6(&spa_namespace_lock);
	}

	if (tasks & SPA_ASYNC_AUTOTRIM_RESTART) {
		FUNC5(&spa_namespace_lock);
		FUNC10(spa, SCL_CONFIG, FTAG, RW_READER);
		FUNC24(spa);
		FUNC11(spa, SCL_CONFIG, FTAG);
		FUNC6(&spa_namespace_lock);
	}

	/*
	 * Let the world know that we're done.
	 */
	FUNC5(&spa->spa_async_lock);
	spa->spa_async_thread = NULL;
	FUNC1(&spa->spa_async_cv);
	FUNC6(&spa->spa_async_lock);
	FUNC23();
}