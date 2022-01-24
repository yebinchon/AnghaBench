#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int spa_log_state; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_9__ {int /*<<< orphan*/  dp_root_dir_obj; } ;
typedef  TYPE_2__ dsl_pool_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_FALSE ; 
 int /*<<< orphan*/  DS_FIND_CHILDREN ; 
#define  SPA_LOG_MISSING 129 
#define  SPA_LOG_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int const) ; 
 int /*<<< orphan*/  zil_check_log_chain ; 

__attribute__((used)) static boolean_t
FUNC3(spa_t *spa)
{
	boolean_t rv = B_FALSE;
	dsl_pool_t *dp = FUNC1(spa);

	switch (spa->spa_log_state) {
	default:
		break;
	case SPA_LOG_MISSING:
		/* need to recheck in case slog has been restored */
	case SPA_LOG_UNKNOWN:
		rv = (FUNC0(dp, dp->dp_root_dir_obj,
		    zil_check_log_chain, NULL, DS_FIND_CHILDREN) != 0);
		if (rv)
			FUNC2(spa, SPA_LOG_MISSING);
		break;
	}
	return (rv);
}