#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spacemap_zap ;
struct TYPE_8__ {int /*<<< orphan*/  sus_nblocks; } ;
struct TYPE_9__ {TYPE_1__ spa_unflushed_stats; int /*<<< orphan*/  spa_sm_logs_by_txg; int /*<<< orphan*/  spa_metaslabs_by_flushed; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_10__ {scalar_t__ sls_txg; scalar_t__ sls_nblocks; int /*<<< orphan*/  sls_sm_obj; int /*<<< orphan*/  sls_mscount; } ;
typedef  TYPE_3__ spa_log_sm_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  metaslab_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_LOG_SPACEMAP_ZAP ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

void
FUNC12(spa_t *spa, dmu_tx_t *tx)
{
	objset_t *mos = FUNC8(spa);

	uint64_t spacemap_zap;
	int error = FUNC10(mos, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_LOG_SPACEMAP_ZAP, sizeof (spacemap_zap), 1, &spacemap_zap);
	if (error == ENOENT) {
		FUNC0(FUNC4(&spa->spa_sm_logs_by_txg));
		return;
	}
	FUNC2(error);

	metaslab_t *oldest = FUNC3(&spa->spa_metaslabs_by_flushed);
	uint64_t oldest_flushed_txg = FUNC7(oldest);

	/* Free all log space maps older than the oldest_flushed_txg. */
	for (spa_log_sm_t *sls = FUNC3(&spa->spa_sm_logs_by_txg);
	    sls && sls->sls_txg < oldest_flushed_txg;
	    sls = FUNC3(&spa->spa_sm_logs_by_txg)) {
		FUNC1(sls->sls_mscount);
		FUNC5(&spa->spa_sm_logs_by_txg, sls);
		FUNC9(mos, sls->sls_sm_obj, tx);
		FUNC2(FUNC11(mos, spacemap_zap, sls->sls_txg, tx));
		spa->spa_unflushed_stats.sus_nblocks -= sls->sls_nblocks;
		FUNC6(sls, sizeof (spa_log_sm_t));
	}
}