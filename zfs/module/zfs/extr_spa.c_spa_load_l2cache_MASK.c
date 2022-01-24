#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {scalar_t__ vdev_guid; int vdev_isl2cache; TYPE_3__* vdev_aux; struct TYPE_31__* vdev_top; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int uint_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_33__ {int sav_count; int /*<<< orphan*/ * sav_config; TYPE_1__** sav_vdevs; } ;
struct TYPE_32__ {TYPE_3__ spa_l2cache; } ;
typedef  TYPE_2__ spa_t ;
typedef  TYPE_3__ spa_aux_vdev_t ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DATA_TYPE_NVLIST_ARRAY ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_ALL ; 
 int /*<<< orphan*/  VDEV_ALLOC_L2CACHE ; 
 int /*<<< orphan*/  VDEV_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 TYPE_1__** FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__***,int*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_1__**,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 TYPE_1__* FUNC19 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 scalar_t__ FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 

void
FUNC24(spa_t *spa)
{
	nvlist_t **l2cache = NULL;
	uint_t nl2cache;
	int i, j, oldnvdevs;
	uint64_t guid;
	vdev_t *vd, **oldvdevs, **newvdevs;
	spa_aux_vdev_t *sav = &spa->spa_l2cache;

#ifndef _KERNEL
	/*
	 * zdb opens both the current state of the pool and the
	 * checkpointed state (if present), with a different spa_t.
	 *
	 * As L2 caches are part of the ARC which is shared among open
	 * pools, we skip loading them when we load the checkpointed
	 * state of the pool.
	 */
	if (!FUNC17(spa))
		return;
#endif

	FUNC0(FUNC12(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

	oldvdevs = sav->sav_vdevs;
	oldnvdevs = sav->sav_count;
	sav->sav_vdevs = NULL;
	sav->sav_count = 0;

	if (sav->sav_config == NULL) {
		nl2cache = 0;
		newvdevs = NULL;
		goto out;
	}

	FUNC1(FUNC9(sav->sav_config,
	    ZPOOL_CONFIG_L2CACHE, &l2cache, &nl2cache) == 0);
	newvdevs = FUNC2(nl2cache * sizeof (void *), KM_SLEEP);

	/*
	 * Process new nvlist of vdevs.
	 */
	for (i = 0; i < nl2cache; i++) {
		FUNC1(FUNC10(l2cache[i], ZPOOL_CONFIG_GUID,
		    &guid) == 0);

		newvdevs[i] = NULL;
		for (j = 0; j < oldnvdevs; j++) {
			vd = oldvdevs[j];
			if (vd != NULL && guid == vd->vdev_guid) {
				/*
				 * Retain previous vdev for add/remove ops.
				 */
				newvdevs[i] = vd;
				oldvdevs[j] = NULL;
				break;
			}
		}

		if (newvdevs[i] == NULL) {
			/*
			 * Create new vdev
			 */
			FUNC1(FUNC13(spa, &vd, l2cache[i], NULL, 0,
			    VDEV_ALLOC_L2CACHE) == 0);
			FUNC0(vd != NULL);
			newvdevs[i] = vd;

			/*
			 * Commit this vdev as an l2cache device,
			 * even if it fails to open.
			 */
			FUNC15(vd);

			vd->vdev_top = vd;
			vd->vdev_aux = sav;

			FUNC14(vd);

			if (FUNC22(vd) != 0)
				continue;

			(void) FUNC23(vd);

			if (!FUNC21(vd))
				FUNC4(spa, vd);
		}
	}

	sav->sav_vdevs = newvdevs;
	sav->sav_count = (int)nl2cache;

	/*
	 * Recompute the stashed list of l2cache devices, with status
	 * information this time.
	 */
	FUNC1(FUNC11(sav->sav_config, ZPOOL_CONFIG_L2CACHE,
	    DATA_TYPE_NVLIST_ARRAY) == 0);

	if (sav->sav_count > 0)
		l2cache = FUNC2(sav->sav_count * sizeof (void *),
		    KM_SLEEP);
	for (i = 0; i < sav->sav_count; i++)
		l2cache[i] = FUNC19(spa,
		    sav->sav_vdevs[i], B_TRUE, VDEV_CONFIG_L2CACHE);
	FUNC1(FUNC7(sav->sav_config,
	    ZPOOL_CONFIG_L2CACHE, l2cache, sav->sav_count) == 0);

out:
	/*
	 * Purge vdevs that were dropped
	 */
	for (i = 0; i < oldnvdevs; i++) {
		uint64_t pool;

		vd = oldvdevs[i];
		if (vd != NULL) {
			FUNC0(vd->vdev_isl2cache);

			if (FUNC16(vd->vdev_guid, &pool) &&
			    pool != 0ULL && FUNC6(vd))
				FUNC5(vd);
			FUNC18(vd);
			FUNC20(vd);
		}
	}

	if (oldvdevs)
		FUNC3(oldvdevs, oldnvdevs * sizeof (void *));

	for (i = 0; i < sav->sav_count; i++)
		FUNC8(l2cache[i]);
	if (sav->sav_count)
		FUNC3(l2cache, sav->sav_count * sizeof (void *));
}