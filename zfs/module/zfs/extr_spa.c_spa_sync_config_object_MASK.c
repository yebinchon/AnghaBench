#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_13__ {scalar_t__ za_first_integer; } ;
typedef  TYPE_3__ zap_attribute_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_12__ {scalar_t__ ub_version; } ;
struct TYPE_11__ {scalar_t__ ub_version; } ;
struct TYPE_14__ {scalar_t__ spa_avz_action; scalar_t__ spa_all_vdev_zaps; int /*<<< orphan*/  spa_config_object; int /*<<< orphan*/ * spa_config_syncing; TYPE_2__ spa_uberblock; TYPE_1__ spa_ubsync; int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_meta_objset; int /*<<< orphan*/  spa_config_dirty_list; } ;
typedef  TYPE_4__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  new_avz ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ AVZ_ACTION_DESTROY ; 
 scalar_t__ AVZ_ACTION_INITIALIZE ; 
 scalar_t__ AVZ_ACTION_NONE ; 
 scalar_t__ AVZ_ACTION_REBUILD ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DMU_OTN_ZAP_METADATA ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_VDEV_ZAP_MAP ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC22(spa_t *spa, dmu_tx_t *tx)
{
	nvlist_t *config;

	/*
	 * If the pool is being imported from a pre-per-vdev-ZAP version of ZFS,
	 * its config may not be dirty but we still need to build per-vdev ZAPs.
	 * Similarly, if the pool is being assembled (e.g. after a split), we
	 * need to rebuild the AVZ although the config may not be dirty.
	 */
	if (FUNC4(&spa->spa_config_dirty_list) &&
	    spa->spa_avz_action == AVZ_ACTION_NONE)
		return;

	FUNC7(spa, SCL_STATE, FTAG, RW_READER);

	FUNC0(spa->spa_avz_action == AVZ_ACTION_NONE ||
	    spa->spa_avz_action == AVZ_ACTION_INITIALIZE ||
	    spa->spa_all_vdev_zaps != 0);

	if (spa->spa_avz_action == AVZ_ACTION_REBUILD) {
		/* Make and build the new AVZ */
		uint64_t new_avz = FUNC12(spa->spa_meta_objset,
		    DMU_OTN_ZAP_METADATA, DMU_OT_NONE, 0, tx);
		FUNC6(spa->spa_root_vdev, new_avz, tx);

		/* Diff old AVZ with new one */
		zap_cursor_t zc;
		zap_attribute_t za;

		for (FUNC16(&zc, spa->spa_meta_objset,
		    spa->spa_all_vdev_zaps);
		    FUNC17(&zc, &za) == 0;
		    FUNC14(&zc)) {
			uint64_t vdzap = za.za_first_integer;
			if (FUNC19(spa->spa_meta_objset, new_avz,
			    vdzap) == ENOENT) {
				/*
				 * ZAP is listed in old AVZ but not in new one;
				 * destroy it
				 */
				FUNC1(FUNC18(spa->spa_meta_objset, vdzap,
				    tx));
			}
		}

		FUNC15(&zc);

		/* Destroy the old AVZ */
		FUNC1(FUNC18(spa->spa_meta_objset,
		    spa->spa_all_vdev_zaps, tx));

		/* Replace the old AVZ in the dir obj with the new one */
		FUNC1(FUNC21(spa->spa_meta_objset,
		    DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_VDEV_ZAP_MAP,
		    sizeof (new_avz), 1, &new_avz, tx));

		spa->spa_all_vdev_zaps = new_avz;
	} else if (spa->spa_avz_action == AVZ_ACTION_DESTROY) {
		zap_cursor_t zc;
		zap_attribute_t za;

		/* Walk through the AVZ and destroy all listed ZAPs */
		for (FUNC16(&zc, spa->spa_meta_objset,
		    spa->spa_all_vdev_zaps);
		    FUNC17(&zc, &za) == 0;
		    FUNC14(&zc)) {
			uint64_t zap = za.za_first_integer;
			FUNC1(FUNC18(spa->spa_meta_objset, zap, tx));
		}

		FUNC15(&zc);

		/* Destroy and unlink the AVZ itself */
		FUNC1(FUNC18(spa->spa_meta_objset,
		    spa->spa_all_vdev_zaps, tx));
		FUNC1(FUNC20(spa->spa_meta_objset,
		    DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_VDEV_ZAP_MAP, tx));
		spa->spa_all_vdev_zaps = 0;
	}

	if (spa->spa_all_vdev_zaps == 0) {
		spa->spa_all_vdev_zaps = FUNC13(spa->spa_meta_objset,
		    DMU_OTN_ZAP_METADATA, DMU_POOL_DIRECTORY_OBJECT,
		    DMU_POOL_VDEV_ZAP_MAP, tx);
	}
	spa->spa_avz_action = AVZ_ACTION_NONE;

	/* Create ZAPs for vdevs that don't have them. */
	FUNC11(spa->spa_root_vdev, tx);

	config = FUNC9(spa, spa->spa_root_vdev,
	    FUNC2(tx), B_FALSE);

	/*
	 * If we're upgrading the spa version then make sure that
	 * the config object gets updated with the correct version.
	 */
	if (spa->spa_ubsync.ub_version < spa->spa_uberblock.ub_version)
		FUNC3(config, ZPOOL_CONFIG_VERSION,
		    spa->spa_uberblock.ub_version);

	FUNC8(spa, SCL_STATE, FTAG);

	FUNC5(spa->spa_config_syncing);
	spa->spa_config_syncing = config;

	FUNC10(spa, spa->spa_config_object, config, tx);
}