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
struct TYPE_5__ {int /*<<< orphan*/ * zv_objset; int /*<<< orphan*/  zv_state_lock; int /*<<< orphan*/  zv_suspend_lock; } ;
typedef  TYPE_1__ zvol_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(zvol_state_t *zv)
{
	FUNC0(FUNC2(&zv->zv_suspend_lock));
	FUNC0(FUNC1(&zv->zv_state_lock));

	FUNC4(zv);

	FUNC3(zv->zv_objset, 1, zv);
	zv->zv_objset = NULL;
}