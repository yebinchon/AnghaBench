#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_9__ {scalar_t__ spa_ena; int /*<<< orphan*/  spa_load_state; TYPE_8__ spa_loaded_ts; int /*<<< orphan*/  spa_refcount; int /*<<< orphan*/  spa_minref; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  spa_load_state_t ;
typedef  int /*<<< orphan*/  spa_import_type_t ;

/* Variables and functions */
 int EBADF ; 
 int EEXIST ; 
 char* FM_EREPORT_ZFS_POOL ; 
 int /*<<< orphan*/  SPA_LOAD_ERROR ; 
 int /*<<< orphan*/  SPA_LOAD_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(spa_t *spa, spa_load_state_t state, spa_import_type_t type)
{
	char *ereport = FM_EREPORT_ZFS_POOL;
	int error;

	spa->spa_load_state = state;
	(void) FUNC3(FUNC2(spa),
	    FUNC5(spa));

	FUNC0(&spa->spa_loaded_ts);
	error = FUNC4(spa, type, &ereport);

	/*
	 * Don't count references from objsets that are already closed
	 * and are making their way through the eviction process.
	 */
	FUNC1(spa);
	spa->spa_minref = FUNC7(&spa->spa_refcount);
	if (error) {
		if (error != EEXIST) {
			spa->spa_loaded_ts.tv_sec = 0;
			spa->spa_loaded_ts.tv_nsec = 0;
		}
		if (error != EBADF) {
			FUNC6(ereport, spa, NULL, NULL, NULL, 0, 0);
		}
	}
	spa->spa_load_state = error ? SPA_LOAD_ERROR : SPA_LOAD_NONE;
	spa->spa_ena = 0;

	(void) FUNC3(FUNC2(spa),
	    FUNC5(spa));

	return (error);
}