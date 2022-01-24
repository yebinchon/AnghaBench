#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_status_t ;
typedef  scalar_t__ zpool_errata_t ;
struct TYPE_5__ {int /*<<< orphan*/  fi_guid; } ;
typedef  TYPE_1__ zfeature_info_t ;
struct TYPE_6__ {scalar_t__ vs_state; scalar_t__ vs_aux; } ;
typedef  TYPE_2__ vdev_stat_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ pss_func; scalar_t__ pss_state; } ;
typedef  TYPE_3__ pool_scan_stat_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ mmp_state_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ DSS_SCANNING ; 
 scalar_t__ MMP_STATE_ACTIVE ; 
 scalar_t__ MMP_STATE_NO_HOSTID ; 
 scalar_t__ POOL_SCAN_RESILVER ; 
 scalar_t__ POOL_STATE_ACTIVE ; 
 int SPA_FEATURES ; 
 scalar_t__ SPA_VERSION ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ VDEV_AUX_ACTIVE ; 
 scalar_t__ VDEV_AUX_BAD_GUID_SUM ; 
 scalar_t__ VDEV_AUX_BAD_LOG ; 
 scalar_t__ VDEV_AUX_CORRUPT_DATA ; 
 scalar_t__ VDEV_AUX_UNSUP_FEAT ; 
 scalar_t__ VDEV_AUX_VERSION_NEWER ; 
 scalar_t__ VDEV_STATE_CANT_OPEN ; 
 scalar_t__ ZIO_FAILURE_MODE_CONTINUE ; 
 scalar_t__ ZIO_SUSPEND_MMP ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CAN_RDONLY ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ENABLED_FEAT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ERRATA ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ERRCOUNT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_FEATURE_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SCAN_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SUSPENDED ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SUSPENDED_REASON ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int /*<<< orphan*/  ZPOOL_STATUS_BAD_GUID_SUM ; 
 int /*<<< orphan*/  ZPOOL_STATUS_BAD_LOG ; 
 int /*<<< orphan*/  ZPOOL_STATUS_CORRUPT_DATA ; 
 int /*<<< orphan*/  ZPOOL_STATUS_CORRUPT_LABEL_NR ; 
 int /*<<< orphan*/  ZPOOL_STATUS_CORRUPT_LABEL_R ; 
 int /*<<< orphan*/  ZPOOL_STATUS_CORRUPT_POOL ; 
 int /*<<< orphan*/  ZPOOL_STATUS_ERRATA ; 
 int /*<<< orphan*/  ZPOOL_STATUS_FAILING_DEV ; 
 int /*<<< orphan*/  ZPOOL_STATUS_FAULTED_DEV_NR ; 
 int /*<<< orphan*/  ZPOOL_STATUS_FAULTED_DEV_R ; 
 int /*<<< orphan*/  ZPOOL_STATUS_FEAT_DISABLED ; 
 int /*<<< orphan*/  ZPOOL_STATUS_HOSTID_ACTIVE ; 
 int /*<<< orphan*/  ZPOOL_STATUS_HOSTID_MISMATCH ; 
 int /*<<< orphan*/  ZPOOL_STATUS_HOSTID_REQUIRED ; 
 int /*<<< orphan*/  ZPOOL_STATUS_IO_FAILURE_CONTINUE ; 
 int /*<<< orphan*/  ZPOOL_STATUS_IO_FAILURE_MMP ; 
 int /*<<< orphan*/  ZPOOL_STATUS_IO_FAILURE_WAIT ; 
 int /*<<< orphan*/  ZPOOL_STATUS_MISSING_DEV_NR ; 
 int /*<<< orphan*/  ZPOOL_STATUS_MISSING_DEV_R ; 
 int /*<<< orphan*/  ZPOOL_STATUS_OFFLINE_DEV ; 
 int /*<<< orphan*/  ZPOOL_STATUS_OK ; 
 int /*<<< orphan*/  ZPOOL_STATUS_REMOVED_DEV ; 
 int /*<<< orphan*/  ZPOOL_STATUS_RESILVERING ; 
 int /*<<< orphan*/  ZPOOL_STATUS_UNSUP_FEAT_READ ; 
 int /*<<< orphan*/  ZPOOL_STATUS_UNSUP_FEAT_WRITE ; 
 int /*<<< orphan*/  ZPOOL_STATUS_VERSION_NEWER ; 
 int /*<<< orphan*/  ZPOOL_STATUS_VERSION_OLDER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__**,int /*<<< orphan*/ *) ; 
 TYPE_1__* spa_feature_table ; 
 int /*<<< orphan*/  vdev_broken ; 
 int /*<<< orphan*/  vdev_errors ; 
 int /*<<< orphan*/  vdev_faulted ; 
 int /*<<< orphan*/  vdev_missing ; 
 int /*<<< orphan*/  vdev_offlined ; 
 int /*<<< orphan*/  vdev_removed ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static zpool_status_t
FUNC10(nvlist_t *config, boolean_t isimport, zpool_errata_t *erratap)
{
	nvlist_t *nvroot;
	vdev_stat_t *vs;
	pool_scan_stat_t *ps = NULL;
	uint_t vsc, psc;
	uint64_t nerr;
	uint64_t version;
	uint64_t stateval;
	uint64_t suspended;
	uint64_t hostid = 0;
	uint64_t errata = 0;
	unsigned long system_hostid = FUNC4();

	FUNC9(FUNC7(config, ZPOOL_CONFIG_VERSION,
	    &version) == 0);
	FUNC9(FUNC6(config, ZPOOL_CONFIG_VDEV_TREE,
	    &nvroot) == 0);
	FUNC9(FUNC8(nvroot, ZPOOL_CONFIG_VDEV_STATS,
	    (uint64_t **)&vs, &vsc) == 0);
	FUNC9(FUNC7(config, ZPOOL_CONFIG_POOL_STATE,
	    &stateval) == 0);

	/*
	 * Currently resilvering a vdev
	 */
	(void) FUNC8(nvroot, ZPOOL_CONFIG_SCAN_STATS,
	    (uint64_t **)&ps, &psc);
	if (ps != NULL && ps->pss_func == POOL_SCAN_RESILVER &&
	    ps->pss_state == DSS_SCANNING)
		return (ZPOOL_STATUS_RESILVERING);

	/*
	 * The multihost property is set and the pool may be active.
	 */
	if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
	    vs->vs_aux == VDEV_AUX_ACTIVE) {
		mmp_state_t mmp_state;
		nvlist_t *nvinfo;

		nvinfo = FUNC2(config, ZPOOL_CONFIG_LOAD_INFO);
		mmp_state = FUNC3(nvinfo,
		    ZPOOL_CONFIG_MMP_STATE);

		if (mmp_state == MMP_STATE_ACTIVE)
			return (ZPOOL_STATUS_HOSTID_ACTIVE);
		else if (mmp_state == MMP_STATE_NO_HOSTID)
			return (ZPOOL_STATUS_HOSTID_REQUIRED);
		else
			return (ZPOOL_STATUS_HOSTID_MISMATCH);
	}

	/*
	 * Pool last accessed by another system.
	 */
	(void) FUNC7(config, ZPOOL_CONFIG_HOSTID, &hostid);
	if (hostid != 0 && (unsigned long)hostid != system_hostid &&
	    stateval == POOL_STATE_ACTIVE)
		return (ZPOOL_STATUS_HOSTID_MISMATCH);

	/*
	 * Newer on-disk version.
	 */
	if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
	    vs->vs_aux == VDEV_AUX_VERSION_NEWER)
		return (ZPOOL_STATUS_VERSION_NEWER);

	/*
	 * Unsupported feature(s).
	 */
	if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
	    vs->vs_aux == VDEV_AUX_UNSUP_FEAT) {
		nvlist_t *nvinfo;

		FUNC9(FUNC6(config, ZPOOL_CONFIG_LOAD_INFO,
		    &nvinfo) == 0);
		if (FUNC5(nvinfo, ZPOOL_CONFIG_CAN_RDONLY))
			return (ZPOOL_STATUS_UNSUP_FEAT_WRITE);
		return (ZPOOL_STATUS_UNSUP_FEAT_READ);
	}

	/*
	 * Check that the config is complete.
	 */
	if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
	    vs->vs_aux == VDEV_AUX_BAD_GUID_SUM)
		return (ZPOOL_STATUS_BAD_GUID_SUM);

	/*
	 * Check whether the pool has suspended.
	 */
	if (FUNC7(config, ZPOOL_CONFIG_SUSPENDED,
	    &suspended) == 0) {
		uint64_t reason;

		if (FUNC7(config, ZPOOL_CONFIG_SUSPENDED_REASON,
		    &reason) == 0 && reason == ZIO_SUSPEND_MMP)
			return (ZPOOL_STATUS_IO_FAILURE_MMP);

		if (suspended == ZIO_FAILURE_MODE_CONTINUE)
			return (ZPOOL_STATUS_IO_FAILURE_CONTINUE);
		return (ZPOOL_STATUS_IO_FAILURE_WAIT);
	}

	/*
	 * Could not read a log.
	 */
	if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
	    vs->vs_aux == VDEV_AUX_BAD_LOG) {
		return (ZPOOL_STATUS_BAD_LOG);
	}

	/*
	 * Bad devices in non-replicated config.
	 */
	if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
	    FUNC1(nvroot, vdev_faulted))
		return (ZPOOL_STATUS_FAULTED_DEV_NR);

	if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
	    FUNC1(nvroot, vdev_missing))
		return (ZPOOL_STATUS_MISSING_DEV_NR);

	if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
	    FUNC1(nvroot, vdev_broken))
		return (ZPOOL_STATUS_CORRUPT_LABEL_NR);

	/*
	 * Corrupted pool metadata
	 */
	if (vs->vs_state == VDEV_STATE_CANT_OPEN &&
	    vs->vs_aux == VDEV_AUX_CORRUPT_DATA)
		return (ZPOOL_STATUS_CORRUPT_POOL);

	/*
	 * Persistent data errors.
	 */
	if (!isimport) {
		if (FUNC7(config, ZPOOL_CONFIG_ERRCOUNT,
		    &nerr) == 0 && nerr != 0)
			return (ZPOOL_STATUS_CORRUPT_DATA);
	}

	/*
	 * Missing devices in a replicated config.
	 */
	if (FUNC1(nvroot, vdev_faulted))
		return (ZPOOL_STATUS_FAULTED_DEV_R);
	if (FUNC1(nvroot, vdev_missing))
		return (ZPOOL_STATUS_MISSING_DEV_R);
	if (FUNC1(nvroot, vdev_broken))
		return (ZPOOL_STATUS_CORRUPT_LABEL_R);

	/*
	 * Devices with errors
	 */
	if (!isimport && FUNC1(nvroot, vdev_errors))
		return (ZPOOL_STATUS_FAILING_DEV);

	/*
	 * Offlined devices
	 */
	if (FUNC1(nvroot, vdev_offlined))
		return (ZPOOL_STATUS_OFFLINE_DEV);

	/*
	 * Removed device
	 */
	if (FUNC1(nvroot, vdev_removed))
		return (ZPOOL_STATUS_REMOVED_DEV);

	/*
	 * Informational errata available.
	 */
	(void) FUNC7(config, ZPOOL_CONFIG_ERRATA, &errata);
	if (errata) {
		*erratap = errata;
		return (ZPOOL_STATUS_ERRATA);
	}

	/*
	 * Outdated, but usable, version
	 */
	if (FUNC0(version) && version != SPA_VERSION)
		return (ZPOOL_STATUS_VERSION_OLDER);

	/*
	 * Usable pool with disabled features
	 */
	if (version >= SPA_VERSION_FEATURES) {
		int i;
		nvlist_t *feat;

		if (isimport) {
			feat = FUNC2(config,
			    ZPOOL_CONFIG_LOAD_INFO);
			if (FUNC5(feat, ZPOOL_CONFIG_ENABLED_FEAT))
				feat = FUNC2(feat,
				    ZPOOL_CONFIG_ENABLED_FEAT);
		} else {
			feat = FUNC2(config,
			    ZPOOL_CONFIG_FEATURE_STATS);
		}

		for (i = 0; i < SPA_FEATURES; i++) {
			zfeature_info_t *fi = &spa_feature_table[i];
			if (!FUNC5(feat, fi->fi_guid))
				return (ZPOOL_STATUS_FEAT_DISABLED);
		}
	}

	return (ZPOOL_STATUS_OK);
}