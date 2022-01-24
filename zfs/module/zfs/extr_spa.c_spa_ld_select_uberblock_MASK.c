#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
struct TYPE_21__ {scalar_t__ ub_checkpoint_txg; scalar_t__ ub_txg; scalar_t__ ub_mmp_magic; scalar_t__ ub_version; scalar_t__ ub_mmp_delay; } ;
typedef  TYPE_1__ uberblock_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_22__ {scalar_t__ spa_load_max_txg; int /*<<< orphan*/ * spa_config_splitting; int /*<<< orphan*/  spa_config; int /*<<< orphan*/  spa_load_info; int /*<<< orphan*/ * spa_label_features; TYPE_1__ spa_uberblock; int /*<<< orphan*/ * spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
typedef  scalar_t__ spa_import_type_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  EREMOTEIO ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ MMP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ MMP_STATE_INACTIVE ; 
 scalar_t__ MMP_STATE_NO_HOSTID ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 scalar_t__ SPA_IMPORT_ASSEMBLE ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  VDEV_AUX_ACTIVE ; 
 int /*<<< orphan*/  VDEV_AUX_CORRUPT_DATA ; 
 int /*<<< orphan*/  VDEV_AUX_UNSUP_FEAT ; 
 int /*<<< orphan*/  VDEV_AUX_VERSION_NEWER ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_FEATURES_FOR_READ ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_SEQ ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_TXG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_UNSUP_FEAT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC30(spa_t *spa, spa_import_type_t type)
{
	vdev_t *rvd = spa->spa_root_vdev;
	nvlist_t *label;
	uberblock_t *ub = &spa->spa_uberblock;
	boolean_t activity_check = B_FALSE;

	/*
	 * If we are opening the checkpointed state of the pool by
	 * rewinding to it, at this point we will have written the
	 * checkpointed uberblock to the vdev labels, so searching
	 * the labels will find the right uberblock.  However, if
	 * we are opening the checkpointed state read-only, we have
	 * not modified the labels. Therefore, we must ignore the
	 * labels and continue using the spa_uberblock that was set
	 * by spa_ld_checkpoint_rewind.
	 *
	 * Note that it would be fine to ignore the labels when
	 * rewinding (opening writeable) as well. However, if we
	 * crash just after writing the labels, we will end up
	 * searching the labels. Doing so in the common case means
	 * that this code path gets exercised normally, rather than
	 * just in the edge case.
	 */
	if (ub->ub_checkpoint_txg != 0 &&
	    FUNC22(spa)) {
		FUNC23(spa, ub);
		return (0);
	}

	/*
	 * Find the best uberblock.
	 */
	FUNC28(rvd, ub, &label);

	/*
	 * If we weren't able to find a single valid uberblock, return failure.
	 */
	if (ub->ub_txg == 0) {
		FUNC11(label);
		FUNC24(spa, "no valid uberblock found");
		return (FUNC27(rvd, VDEV_AUX_CORRUPT_DATA, ENXIO));
	}

	if (spa->spa_load_max_txg != UINT64_MAX) {
		(void) FUNC21(FUNC20(spa),
		    (u_longlong_t)spa->spa_load_max_txg);
	}
	FUNC25(spa, "using uberblock with txg=%llu",
	    (u_longlong_t)ub->ub_txg);


	/*
	 * For pools which have the multihost property on determine if the
	 * pool is truly inactive and can be safely imported.  Prevent
	 * hosts which don't have a hostid set from importing the pool.
	 */
	activity_check = FUNC16(spa, ub, label,
	    spa->spa_config);
	if (activity_check) {
		if (ub->ub_mmp_magic == MMP_MAGIC && ub->ub_mmp_delay &&
		    FUNC19(spa) == 0) {
			FUNC11(label);
			FUNC5(spa->spa_load_info,
			    ZPOOL_CONFIG_MMP_STATE, MMP_STATE_NO_HOSTID);
			return (FUNC27(rvd, VDEV_AUX_ACTIVE, EREMOTEIO));
		}

		int error = FUNC15(spa, ub, spa->spa_config);
		if (error) {
			FUNC11(label);
			return (error);
		}

		FUNC5(spa->spa_load_info,
		    ZPOOL_CONFIG_MMP_STATE, MMP_STATE_INACTIVE);
		FUNC5(spa->spa_load_info,
		    ZPOOL_CONFIG_MMP_TXG, ub->ub_txg);
		FUNC4(spa->spa_load_info,
		    ZPOOL_CONFIG_MMP_SEQ,
		    (FUNC1(ub) ? FUNC0(ub) : 0));
	}

	/*
	 * If the pool has an unsupported version we can't open it.
	 */
	if (!FUNC2(ub->ub_version)) {
		FUNC11(label);
		FUNC24(spa, "version %llu is not supported",
		    (u_longlong_t)ub->ub_version);
		return (FUNC27(rvd, VDEV_AUX_VERSION_NEWER, ENOTSUP));
	}

	if (ub->ub_version >= SPA_VERSION_FEATURES) {
		nvlist_t *features;

		/*
		 * If we weren't able to find what's necessary for reading the
		 * MOS in the label, return failure.
		 */
		if (label == NULL) {
			FUNC24(spa, "label config unavailable");
			return (FUNC27(rvd, VDEV_AUX_CORRUPT_DATA,
			    ENXIO));
		}

		if (FUNC12(label, ZPOOL_CONFIG_FEATURES_FOR_READ,
		    &features) != 0) {
			FUNC11(label);
			FUNC24(spa, "invalid label: '%s' missing",
			    ZPOOL_CONFIG_FEATURES_FOR_READ);
			return (FUNC27(rvd, VDEV_AUX_CORRUPT_DATA,
			    ENXIO));
		}

		/*
		 * Update our in-core representation with the definitive values
		 * from the label.
		 */
		FUNC11(spa->spa_label_features);
		FUNC3(FUNC9(features, &spa->spa_label_features, 0) == 0);
	}

	FUNC11(label);

	/*
	 * Look through entries in the label nvlist's features_for_read. If
	 * there is a feature listed there which we don't understand then we
	 * cannot open a pool.
	 */
	if (ub->ub_version >= SPA_VERSION_FEATURES) {
		nvlist_t *unsup_feat;

		FUNC3(FUNC8(&unsup_feat, NV_UNIQUE_NAME, KM_SLEEP) ==
		    0);

		for (nvpair_t *nvp = FUNC13(spa->spa_label_features,
		    NULL); nvp != NULL;
		    nvp = FUNC13(spa->spa_label_features, nvp)) {
			if (!FUNC29(FUNC14(nvp))) {
				FUNC3(FUNC7(unsup_feat,
				    FUNC14(nvp), "") == 0);
			}
		}

		if (!FUNC10(unsup_feat)) {
			FUNC3(FUNC6(spa->spa_load_info,
			    ZPOOL_CONFIG_UNSUP_FEAT, unsup_feat) == 0);
			FUNC11(unsup_feat);
			FUNC24(spa, "some features are unsupported");
			return (FUNC27(rvd, VDEV_AUX_UNSUP_FEAT,
			    ENOTSUP));
		}

		FUNC11(unsup_feat);
	}

	if (type != SPA_IMPORT_ASSEMBLE && spa->spa_config_splitting) {
		FUNC17(spa, SCL_ALL, FTAG, RW_WRITER);
		FUNC26(spa, spa->spa_config);
		FUNC18(spa, SCL_ALL, FTAG);
		FUNC11(spa->spa_config_splitting);
		spa->spa_config_splitting = NULL;
	}

	/*
	 * Initialize internal SPA structures.
	 */
	FUNC23(spa, ub);

	return (0);
}