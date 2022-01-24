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
struct TYPE_12__ {int vdev_children; scalar_t__ vdev_ms_array; scalar_t__ vdev_removing; scalar_t__ vdev_islog; struct TYPE_12__** vdev_child; } ;
typedef  TYPE_1__ vdev_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_13__ {int /*<<< orphan*/  spa_is_root; int /*<<< orphan*/  spa_dsl_pool; TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int SPA_CONFIG_UPDATE_POOL ; 
 int SPA_CONFIG_UPDATE_VDEVS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void
FUNC11(spa_t *spa, int what)
{
	vdev_t *rvd = spa->spa_root_vdev;
	uint64_t txg;
	int c;

	FUNC0(FUNC1(&spa_namespace_lock));

	FUNC2(spa, SCL_ALL, FTAG, RW_WRITER);
	txg = FUNC4(spa) + 1;
	if (what == SPA_CONFIG_UPDATE_POOL) {
		FUNC7(rvd);
	} else {
		/*
		 * If we have top-level vdevs that were added but have
		 * not yet been prepared for allocation, do that now.
		 * (It's safe now because the config cache is up to date,
		 * so it will be able to translate the new DVAs.)
		 * See comments in spa_vdev_add() for full details.
		 */
		for (c = 0; c < rvd->vdev_children; c++) {
			vdev_t *tvd = rvd->vdev_child[c];

			/*
			 * Explicitly skip vdevs that are indirect or
			 * log vdevs that are being removed. The reason
			 * is that both of those can have vdev_ms_array
			 * set to 0 and we wouldn't want to change their
			 * metaslab size nor call vdev_expand() on them.
			 */
			if (!FUNC9(tvd) ||
			    (tvd->vdev_islog && tvd->vdev_removing))
				continue;

			if (tvd->vdev_ms_array == 0)
				FUNC10(tvd);
			FUNC8(tvd, txg);
		}
	}
	FUNC3(spa, SCL_ALL, FTAG);

	/*
	 * Wait for the mosconfig to be regenerated and synced.
	 */
	FUNC6(spa->spa_dsl_pool, txg);

	/*
	 * Update the global config cache to reflect the new mosconfig.
	 */
	if (!spa->spa_is_root) {
		FUNC5(spa, B_FALSE,
		    what != SPA_CONFIG_UPDATE_POOL);
	}

	if (what == SPA_CONFIG_UPDATE_POOL)
		FUNC11(spa, SPA_CONFIG_UPDATE_VDEVS);
}