#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_11__ {int ub_txg; int ub_timestamp; int ub_mmp_config; } ;
typedef  TYPE_1__ uberblock_t ;
struct TYPE_12__ {int /*<<< orphan*/  spa_load_info; int /*<<< orphan*/ * spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  kmutex_t ;
typedef  int /*<<< orphan*/  kcondvar_t ;
typedef  scalar_t__ hrtime_t ;

/* Variables and functions */
 int /*<<< orphan*/  CV_DEFAULT ; 
 int EINTR ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int MMP_STATE_ACTIVE ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  VDEV_AUX_ACTIVE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTNAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_HOSTNAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_TXG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ hz ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,int,int,int,int,int) ; 

__attribute__((used)) static int
FUNC27(spa_t *spa, uberblock_t *ub, nvlist_t *config)
{
	uint64_t txg = ub->ub_txg;
	uint64_t timestamp = ub->ub_timestamp;
	uint64_t mmp_config = ub->ub_mmp_config;
	uint16_t mmp_seq = FUNC1(ub) ? FUNC0(ub) : 0;
	uint64_t import_delay;
	hrtime_t import_expire;
	nvlist_t *mmp_label = NULL;
	vdev_t *rvd = spa->spa_root_vdev;
	kcondvar_t cv;
	kmutex_t mtx;
	int error = 0;

	FUNC5(&cv, NULL, CV_DEFAULT, NULL);
	FUNC17(&mtx, NULL, MUTEX_DEFAULT, NULL);
	FUNC15(&mtx);

	/*
	 * If ZPOOL_CONFIG_MMP_TXG is present an activity check was performed
	 * during the earlier tryimport.  If the txg recorded there is 0 then
	 * the pool is known to be active on another host.
	 *
	 * Otherwise, the pool might be in use on another host.  Check for
	 * changes in the uberblocks on disk if necessary.
	 */
	if (FUNC18(config, ZPOOL_CONFIG_LOAD_INFO)) {
		nvlist_t *nvinfo = FUNC10(config,
		    ZPOOL_CONFIG_LOAD_INFO);

		if (FUNC18(nvinfo, ZPOOL_CONFIG_MMP_TXG) &&
		    FUNC12(nvinfo, ZPOOL_CONFIG_MMP_TXG) == 0) {
			FUNC25(rvd, ub, &mmp_label);
			error = FUNC3(EREMOTEIO);
			goto out;
		}
	}

	import_delay = FUNC20(spa, ub);

	/* Add a small random factor in case of simultaneous imports (0-25%) */
	import_delay += import_delay * FUNC21(250) / 1000;

	import_expire = FUNC13() + import_delay;

	while (FUNC13() < import_expire) {
		(void) FUNC23(FUNC22(spa),
		    FUNC2(import_expire - FUNC13()));

		FUNC25(rvd, ub, &mmp_label);

		if (txg != ub->ub_txg || timestamp != ub->ub_timestamp ||
		    mmp_seq != (FUNC1(ub) ? FUNC0(ub) : 0)) {
			FUNC26("multihost activity detected "
			    "txg %llu ub_txg  %llu "
			    "timestamp %llu ub_timestamp  %llu "
			    "mmp_config %#llx ub_mmp_config %#llx",
			    txg, ub->ub_txg, timestamp, ub->ub_timestamp,
			    mmp_config, ub->ub_mmp_config);

			error = FUNC3(EREMOTEIO);
			break;
		}

		if (mmp_label) {
			FUNC19(mmp_label);
			mmp_label = NULL;
		}

		error = FUNC6(&cv, &mtx, FUNC7() + hz);
		if (error != -1) {
			error = FUNC3(EINTR);
			break;
		}
		error = 0;
	}

out:
	FUNC16(&mtx);
	FUNC14(&mtx);
	FUNC4(&cv);

	/*
	 * If the pool is determined to be active store the status in the
	 * spa->spa_load_info nvlist.  If the remote hostname or hostid are
	 * available from configuration read from disk store them as well.
	 * This allows 'zpool import' to generate a more useful message.
	 *
	 * ZPOOL_CONFIG_MMP_STATE    - observed pool status (mandatory)
	 * ZPOOL_CONFIG_MMP_HOSTNAME - hostname from the active pool
	 * ZPOOL_CONFIG_MMP_HOSTID   - hostid from the active pool
	 */
	if (error == EREMOTEIO) {
		char *hostname = "<unknown>";
		uint64_t hostid = 0;

		if (mmp_label) {
			if (FUNC18(mmp_label, ZPOOL_CONFIG_HOSTNAME)) {
				hostname = FUNC11(mmp_label,
				    ZPOOL_CONFIG_HOSTNAME);
				FUNC8(spa->spa_load_info,
				    ZPOOL_CONFIG_MMP_HOSTNAME, hostname);
			}

			if (FUNC18(mmp_label, ZPOOL_CONFIG_HOSTID)) {
				hostid = FUNC12(mmp_label,
				    ZPOOL_CONFIG_HOSTID);
				FUNC9(spa->spa_load_info,
				    ZPOOL_CONFIG_MMP_HOSTID, hostid);
			}
		}

		FUNC9(spa->spa_load_info,
		    ZPOOL_CONFIG_MMP_STATE, MMP_STATE_ACTIVE);
		FUNC9(spa->spa_load_info,
		    ZPOOL_CONFIG_MMP_TXG, 0);

		error = FUNC24(rvd, VDEV_AUX_ACTIVE, EREMOTEIO);
	}

	if (mmp_label)
		FUNC19(mmp_label);

	return (error);
}