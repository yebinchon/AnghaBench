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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int vdev_trim_state_t ;
struct TYPE_6__ {int vdev_trim_state; scalar_t__ vdev_guid; int /*<<< orphan*/  vdev_path; void* vdev_trim_secure; void* vdev_trim_partial; void* vdev_trim_rate; void* vdev_trim_last_offset; int /*<<< orphan*/  vdev_trim_action_time; int /*<<< orphan*/ * vdev_spa; int /*<<< orphan*/  vdev_trim_lock; } ;
typedef  TYPE_1__ vdev_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  dp_mos_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESC_ZFS_TRIM_CANCEL ; 
 int /*<<< orphan*/  ESC_ZFS_TRIM_FINISH ; 
 int /*<<< orphan*/  ESC_ZFS_TRIM_RESUME ; 
 int /*<<< orphan*/  ESC_ZFS_TRIM_START ; 
 int /*<<< orphan*/  ESC_ZFS_TRIM_SUSPEND ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 void* UINT64_MAX ; 
#define  VDEV_TRIM_ACTIVE 131 
#define  VDEV_TRIM_CANCELED 130 
#define  VDEV_TRIM_COMPLETE 129 
#define  VDEV_TRIM_SUSPENDED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdev_trim_zap_update_sync ; 

__attribute__((used)) static void
FUNC13(vdev_t *vd, vdev_trim_state_t new_state,
    uint64_t rate, boolean_t partial, boolean_t secure)
{
	FUNC0(FUNC1(&vd->vdev_trim_lock));
	spa_t *spa = vd->vdev_spa;

	if (new_state == vd->vdev_trim_state)
		return;

	/*
	 * Copy the vd's guid, this will be freed by the sync task.
	 */
	uint64_t *guid = FUNC8(sizeof (uint64_t), KM_SLEEP);
	*guid = vd->vdev_guid;

	/*
	 * If we're suspending, then preserve the original start time.
	 */
	if (vd->vdev_trim_state != VDEV_TRIM_SUSPENDED) {
		vd->vdev_trim_action_time = FUNC7();
	}

	/*
	 * If we're activating, then preserve the requested rate and trim
	 * method.  Setting the last offset and rate to UINT64_MAX is used
	 * as a sentinel to indicate they should be reset to default values.
	 */
	if (new_state == VDEV_TRIM_ACTIVE) {
		if (vd->vdev_trim_state == VDEV_TRIM_COMPLETE ||
		    vd->vdev_trim_state == VDEV_TRIM_CANCELED) {
			vd->vdev_trim_last_offset = UINT64_MAX;
			vd->vdev_trim_rate = UINT64_MAX;
			vd->vdev_trim_partial = UINT64_MAX;
			vd->vdev_trim_secure = UINT64_MAX;
		}

		if (rate != 0)
			vd->vdev_trim_rate = rate;

		if (partial != 0)
			vd->vdev_trim_partial = partial;

		if (secure != 0)
			vd->vdev_trim_secure = secure;
	}

	boolean_t resumed = !!(vd->vdev_trim_state == VDEV_TRIM_SUSPENDED);
	vd->vdev_trim_state = new_state;

	dmu_tx_t *tx = FUNC5(FUNC11(spa)->dp_mos_dir);
	FUNC2(FUNC3(tx, TXG_WAIT));
	FUNC6(FUNC11(spa), vdev_trim_zap_update_sync,
	    guid, 2, ZFS_SPACE_CHECK_NONE, tx);

	switch (new_state) {
	case VDEV_TRIM_ACTIVE:
		FUNC10(spa, vd, NULL,
		    resumed ? ESC_ZFS_TRIM_RESUME : ESC_ZFS_TRIM_START);
		FUNC12(spa, "trim", tx,
		    "vdev=%s activated", vd->vdev_path);
		break;
	case VDEV_TRIM_SUSPENDED:
		FUNC10(spa, vd, NULL, ESC_ZFS_TRIM_SUSPEND);
		FUNC12(spa, "trim", tx,
		    "vdev=%s suspended", vd->vdev_path);
		break;
	case VDEV_TRIM_CANCELED:
		FUNC10(spa, vd, NULL, ESC_ZFS_TRIM_CANCEL);
		FUNC12(spa, "trim", tx,
		    "vdev=%s canceled", vd->vdev_path);
		break;
	case VDEV_TRIM_COMPLETE:
		FUNC10(spa, vd, NULL, ESC_ZFS_TRIM_FINISH);
		FUNC12(spa, "trim", tx,
		    "vdev=%s complete", vd->vdev_path);
		break;
	default:
		FUNC9("invalid state %llu", (unsigned long long)new_state);
	}

	FUNC4(tx);
}