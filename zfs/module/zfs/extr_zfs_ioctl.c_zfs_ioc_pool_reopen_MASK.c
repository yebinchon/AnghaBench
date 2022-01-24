#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int spa_scrub_reopen; int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_dsl_pool; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SCL_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(const char *pool, nvlist_t *innvl, nvlist_t *outnvl)
{
	spa_t *spa;
	int error;
	boolean_t rc, scrub_restart = B_TRUE;

	if (innvl) {
		error = FUNC1(innvl,
		    "scrub_restart", &rc);
		if (error == 0)
			scrub_restart = rc;
	}

	error = FUNC3(pool, &spa, FTAG);
	if (error != 0)
		return (error);

	FUNC4(spa, SCL_NONE);

	/*
	 * If the scrub_restart flag is B_FALSE and a scrub is already
	 * in progress then set spa_scrub_reopen flag to B_TRUE so that
	 * we don't restart the scrub as a side effect of the reopen.
	 * Otherwise, let vdev_open() decided if a resilver is required.
	 */

	spa->spa_scrub_reopen = (!scrub_restart &&
	    FUNC0(spa->spa_dsl_pool));
	FUNC6(spa->spa_root_vdev);
	spa->spa_scrub_reopen = B_FALSE;

	(void) FUNC5(spa, NULL, 0);
	FUNC2(spa, FTAG);
	return (0);
}