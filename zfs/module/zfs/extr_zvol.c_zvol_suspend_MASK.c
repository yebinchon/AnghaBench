#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ zv_open_count; int /*<<< orphan*/  zv_state_lock; int /*<<< orphan*/  zv_suspend_ref; int /*<<< orphan*/  zv_suspend_lock; } ;
typedef  TYPE_1__ zvol_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

zvol_state_t *
FUNC7(const char *name)
{
	zvol_state_t *zv;

	zv = FUNC5(name, RW_WRITER);

	if (zv == NULL)
		return (NULL);

	/* block all I/O, release in zvol_resume. */
	FUNC0(FUNC1(&zv->zv_state_lock));
	FUNC0(FUNC2(&zv->zv_suspend_lock));

	FUNC3(&zv->zv_suspend_ref);

	if (zv->zv_open_count > 0)
		FUNC6(zv);

	/*
	 * do not hold zv_state_lock across suspend/resume to
	 * avoid locking up zvol lookups
	 */
	FUNC4(&zv->zv_state_lock);

	/* zv_suspend_lock is released in zvol_resume() */
	return (zv);
}