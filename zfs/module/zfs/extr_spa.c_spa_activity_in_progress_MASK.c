#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int zpool_wait_activity_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_15__ {int /*<<< orphan*/  sr_state; } ;
struct TYPE_18__ {TYPE_2__* spa_dsl_pool; TYPE_1__ spa_removing_phys; int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_activities_lock; } ;
typedef  TYPE_4__ spa_t ;
struct TYPE_17__ {int /*<<< orphan*/  scn_state; int /*<<< orphan*/  scn_func; } ;
struct TYPE_19__ {TYPE_3__ scn_phys; } ;
typedef  TYPE_5__ dsl_scan_t ;
typedef  int boolean_t ;
struct TYPE_16__ {TYPE_5__* dp_scan; int /*<<< orphan*/  dp_free_bpobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_ZPOOL_CHECKPOINT ; 
 int /*<<< orphan*/  DSS_SCANNING ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POOL_SCAN_SCRUB ; 
 int /*<<< orphan*/  RW_READER ; 
 int SCL_CONFIG ; 
 int SCL_STATE ; 
 int /*<<< orphan*/  SPA_FEATURE_ASYNC_DESTROY ; 
 int /*<<< orphan*/  SPA_FEATURE_POOL_CHECKPOINT ; 
 int /*<<< orphan*/  SPA_VERSION_DEADLISTS ; 
#define  ZPOOL_WAIT_CKPT_DISCARD 134 
#define  ZPOOL_WAIT_FREE 133 
#define  ZPOOL_WAIT_INITIALIZE 132 
#define  ZPOOL_WAIT_REMOVE 131 
#define  ZPOOL_WAIT_REPLACE 130 
#define  ZPOOL_WAIT_RESILVER 129 
#define  ZPOOL_WAIT_SCRUB 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_4__*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(spa_t *spa, zpool_wait_activity_t activity,
    boolean_t use_tag, uint64_t tag, boolean_t *in_progress)
{
	int error = 0;

	FUNC0(FUNC1(&spa->spa_activities_lock));

	switch (activity) {
	case ZPOOL_WAIT_CKPT_DISCARD:
		*in_progress =
		    (FUNC9(spa, SPA_FEATURE_POOL_CHECKPOINT) &&
		    FUNC15(FUNC11(spa),
		    DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_ZPOOL_CHECKPOINT) ==
		    ENOENT);
		break;
	case ZPOOL_WAIT_FREE:
		*in_progress = ((FUNC13(spa) >= SPA_VERSION_DEADLISTS &&
		    !FUNC2(&spa->spa_dsl_pool->dp_free_bpobj)) ||
		    FUNC9(spa, SPA_FEATURE_ASYNC_DESTROY) ||
		    FUNC10(spa));
		break;
	case ZPOOL_WAIT_INITIALIZE:
		error = FUNC12(spa, use_tag, tag, in_progress);
		break;
	case ZPOOL_WAIT_REPLACE:
		FUNC5(&spa->spa_activities_lock);
		FUNC7(spa, SCL_CONFIG | SCL_STATE, FTAG, RW_READER);
		FUNC4(&spa->spa_activities_lock);

		*in_progress = FUNC14(spa->spa_root_vdev);
		FUNC8(spa, SCL_CONFIG | SCL_STATE, FTAG);
		break;
	case ZPOOL_WAIT_REMOVE:
		*in_progress = (spa->spa_removing_phys.sr_state ==
		    DSS_SCANNING);
		break;
	case ZPOOL_WAIT_RESILVER:
	case ZPOOL_WAIT_SCRUB:
	{
		boolean_t scanning, paused, is_scrub;
		dsl_scan_t *scn =  spa->spa_dsl_pool->dp_scan;

		is_scrub = (scn->scn_phys.scn_func == POOL_SCAN_SCRUB);
		scanning = (scn->scn_phys.scn_state == DSS_SCANNING);
		paused = FUNC3(scn);
		*in_progress = (scanning && !paused &&
		    is_scrub == (activity == ZPOOL_WAIT_SCRUB));
		break;
	}
	default:
		FUNC6("unrecognized value for activity %d", activity);
	}

	return (error);
}