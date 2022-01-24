#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int zv_flags; int /*<<< orphan*/  zv_objset; int /*<<< orphan*/ * zv_dn; int /*<<< orphan*/ * zv_zilog; int /*<<< orphan*/  zv_suspend_lock; int /*<<< orphan*/  zv_state_lock; } ;
typedef  TYPE_1__ zvol_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int ZVOL_WRITTEN_TO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(zvol_state_t *zv)
{
	FUNC0(FUNC1(&zv->zv_state_lock) &&
	    FUNC2(&zv->zv_suspend_lock));

	if (zv->zv_flags & ZVOL_WRITTEN_TO) {
		FUNC0(zv->zv_zilog != NULL);
		FUNC7(zv->zv_zilog);
	}

	zv->zv_zilog = NULL;

	FUNC5(zv->zv_dn, FTAG);
	zv->zv_dn = NULL;

	/*
	 * Evict cached data. We must write out any dirty data before
	 * disowning the dataset.
	 */
	if (zv->zv_flags & ZVOL_WRITTEN_TO)
		FUNC6(FUNC4(zv->zv_objset), 0);
	(void) FUNC3(zv->zv_objset);
}