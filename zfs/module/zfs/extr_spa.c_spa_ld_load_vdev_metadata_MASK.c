#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
struct TYPE_9__ {int spa_import_flags; scalar_t__ spa_load_state; int /*<<< orphan*/  spa_l2cache; int /*<<< orphan*/  spa_spares; int /*<<< orphan*/ * spa_root_vdev; scalar_t__ spa_autoreplace; int /*<<< orphan*/  spa_load_info; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  MMP_STATE_NO_HOSTID ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 scalar_t__ SPA_LOAD_IMPORT ; 
 scalar_t__ SPA_LOAD_TRYIMPORT ; 
 int /*<<< orphan*/  VDEV_AUX_ACTIVE ; 
 int /*<<< orphan*/  VDEV_AUX_CORRUPT_DATA ; 
 int ZFS_IMPORT_SKIP_MMP ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(spa_t *spa)
{
	int error = 0;
	vdev_t *rvd = spa->spa_root_vdev;

	/*
	 * If the 'multihost' property is set, then never allow a pool to
	 * be imported when the system hostid is zero.  The exception to
	 * this rule is zdb which is always allowed to access pools.
	 */
	if (FUNC8(spa) && FUNC5(spa) == 0 &&
	    (spa->spa_import_flags & ZFS_IMPORT_SKIP_MMP) == 0) {
		FUNC0(spa->spa_load_info,
		    ZPOOL_CONFIG_MMP_STATE, MMP_STATE_NO_HOSTID);
		return (FUNC9(rvd, VDEV_AUX_ACTIVE, EREMOTEIO));
	}

	/*
	 * If the 'autoreplace' property is set, then post a resource notifying
	 * the ZFS DE that it should not issue any faults for unopenable
	 * devices.  We also iterate over the vdevs, and post a sysevent for any
	 * unopenable vdevs so that the normal autoreplace handler can take
	 * over.
	 */
	if (spa->spa_autoreplace && spa->spa_load_state != SPA_LOAD_TRYIMPORT) {
		FUNC2(spa->spa_root_vdev);
		/*
		 * For the import case, this is done in spa_import(), because
		 * at this point we're using the spare definitions from
		 * the MOS config, not necessarily from the userland config.
		 */
		if (spa->spa_load_state != SPA_LOAD_IMPORT) {
			FUNC1(&spa->spa_spares);
			FUNC1(&spa->spa_l2cache);
		}
	}

	/*
	 * Load the vdev metadata such as metaslabs, DTLs, spacemap object, etc.
	 */
	error = FUNC11(rvd);
	if (error != 0) {
		FUNC7(spa, "vdev_load failed [error=%d]", error);
		return (FUNC9(rvd, VDEV_AUX_CORRUPT_DATA, error));
	}

	error = FUNC6(spa);
	if (error != 0) {
		FUNC7(spa, "spa_ld_log_sm_data failed [error=%d]",
		    error);
		return (FUNC9(rvd, VDEV_AUX_CORRUPT_DATA, error));
	}

	/*
	 * Propagate the leaf DTLs we just loaded all the way up the vdev tree.
	 */
	FUNC3(spa, SCL_ALL, FTAG, RW_WRITER);
	FUNC10(rvd, 0, 0, B_FALSE);
	FUNC4(spa, SCL_ALL, FTAG);

	return (0);
}