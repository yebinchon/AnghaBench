#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  space_map_t ;
struct TYPE_9__ {int /*<<< orphan*/  spa_meta_objset; int /*<<< orphan*/  spa_sm_logs_by_txg; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_10__ {scalar_t__ sls_txg; scalar_t__ sls_sm_obj; } ;
typedef  TYPE_2__ spa_log_sm_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  SPA_FEATURE_LOG_SPACEMAP ; 
 int /*<<< orphan*/  SPA_MINBLOCKSHIFT ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(spa_t *spa)
{
	if (!FUNC5(spa, SPA_FEATURE_LOG_SPACEMAP))
		return;

	(void) FUNC4("\nLog Space Maps in Pool:\n");
	for (spa_log_sm_t *sls = FUNC2(&spa->spa_sm_logs_by_txg);
	    sls; sls = FUNC0(&spa->spa_sm_logs_by_txg, sls)) {
		space_map_t *sm = NULL;
		FUNC1(FUNC8(&sm, FUNC6(spa),
		    sls->sls_sm_obj, 0, UINT64_MAX, SPA_MINBLOCKSHIFT));

		(void) FUNC4("Log Spacemap object %llu txg %llu\n",
		    (u_longlong_t)sls->sls_sm_obj, (u_longlong_t)sls->sls_txg);
		FUNC3(spa->spa_meta_objset, sm);
		FUNC7(sm);
	}
	(void) FUNC4("\n");
}