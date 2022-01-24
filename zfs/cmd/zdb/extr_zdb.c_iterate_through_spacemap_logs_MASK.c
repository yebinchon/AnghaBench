#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdb_log_sm_cb_t ;
struct TYPE_13__ {void* uic_arg; int /*<<< orphan*/  uic_cb; int /*<<< orphan*/  uic_txg; TYPE_2__* uic_spa; } ;
typedef  TYPE_1__ unflushed_iter_cb_arg_t ;
typedef  int /*<<< orphan*/  space_map_t ;
struct TYPE_14__ {int /*<<< orphan*/  spa_sm_logs_by_txg; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_15__ {int /*<<< orphan*/  sls_txg; int /*<<< orphan*/  sls_sm_obj; } ;
typedef  TYPE_3__ spa_log_sm_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  SPA_FEATURE_LOG_SPACEMAP ; 
 int /*<<< orphan*/  SPA_MINBLOCKSHIFT ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iterate_through_spacemap_logs_cb ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(spa_t *spa, zdb_log_sm_cb_t cb, void *arg)
{
	if (!FUNC5(spa, SPA_FEATURE_LOG_SPACEMAP))
		return;

	FUNC3(spa, SCL_CONFIG, FTAG, RW_READER);
	for (spa_log_sm_t *sls = FUNC2(&spa->spa_sm_logs_by_txg);
	    sls; sls = FUNC0(&spa->spa_sm_logs_by_txg, sls)) {
		space_map_t *sm = NULL;
		FUNC1(FUNC10(&sm, FUNC6(spa),
		    sls->sls_sm_obj, 0, UINT64_MAX, SPA_MINBLOCKSHIFT));

		unflushed_iter_cb_arg_t uic = {
			.uic_spa = spa,
			.uic_txg = sls->sls_txg,
			.uic_arg = arg,
			.uic_cb = cb
		};

		FUNC1(FUNC8(sm, FUNC9(sm),
		    iterate_through_spacemap_logs_cb, &uic));
		FUNC7(sm);
	}
	FUNC4(spa, SCL_CONFIG, FTAG);
}