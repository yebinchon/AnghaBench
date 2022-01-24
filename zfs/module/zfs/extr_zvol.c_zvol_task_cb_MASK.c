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
struct TYPE_3__ {int op; int /*<<< orphan*/  value; int /*<<< orphan*/  name1; int /*<<< orphan*/  name2; } ;
typedef  TYPE_1__ zvol_task_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ZVOL_ASYNC_CREATE_MINORS 132 
#define  ZVOL_ASYNC_REMOVE_MINORS 131 
#define  ZVOL_ASYNC_RENAME_MINORS 130 
#define  ZVOL_ASYNC_SET_SNAPDEV 129 
#define  ZVOL_ASYNC_SET_VOLMODE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(void *param)
{
	zvol_task_t *task = (zvol_task_t *)param;

	switch (task->op) {
	case ZVOL_ASYNC_CREATE_MINORS:
		(void) FUNC1(task->name1);
		break;
	case ZVOL_ASYNC_REMOVE_MINORS:
		FUNC2(task->name1);
		break;
	case ZVOL_ASYNC_RENAME_MINORS:
		FUNC3(task->name1, task->name2);
		break;
	case ZVOL_ASYNC_SET_SNAPDEV:
		FUNC4(task->name1, task->value);
		break;
	case ZVOL_ASYNC_SET_VOLMODE:
		FUNC5(task->name1, task->value);
		break;
	default:
		FUNC0(0);
		break;
	}

	FUNC6(task);
}