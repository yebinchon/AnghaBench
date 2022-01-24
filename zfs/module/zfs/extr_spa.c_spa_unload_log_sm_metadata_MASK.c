#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ sus_blocklimit; scalar_t__ sus_memused; scalar_t__ sus_nblocks; } ;
struct TYPE_11__ {TYPE_1__ spa_unflushed_stats; int /*<<< orphan*/  spa_log_summary; int /*<<< orphan*/  spa_sm_logs_by_txg; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_12__ {int /*<<< orphan*/  lse_mscount; int /*<<< orphan*/  sls_mscount; } ;
typedef  TYPE_3__ spa_log_sm_t ;
typedef  TYPE_3__ log_summary_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC5(spa_t *spa)
{
	void *cookie = NULL;
	spa_log_sm_t *sls;
	while ((sls = FUNC1(&spa->spa_sm_logs_by_txg,
	    &cookie)) != NULL) {
		FUNC0(sls->sls_mscount);
		FUNC2(sls, sizeof (spa_log_sm_t));
	}

	for (log_summary_entry_t *e = FUNC3(&spa->spa_log_summary);
	    e != NULL; e = FUNC3(&spa->spa_log_summary)) {
		FUNC0(e->lse_mscount);
		FUNC4(&spa->spa_log_summary, e);
		FUNC2(e, sizeof (log_summary_entry_t));
	}

	spa->spa_unflushed_stats.sus_nblocks = 0;
	spa->spa_unflushed_stats.sus_memused = 0;
	spa->spa_unflushed_stats.sus_blocklimit = 0;
}