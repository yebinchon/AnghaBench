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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_5__ {int /*<<< orphan*/  timer_event_source; int /*<<< orphan*/  dynamic_creds; int /*<<< orphan*/ * control_command; int /*<<< orphan*/  exec_command; int /*<<< orphan*/  exec_runtime; int /*<<< orphan*/  parameters_fragment; int /*<<< orphan*/  parameters_proc_self_mountinfo; int /*<<< orphan*/  where; } ;
typedef  TYPE_1__ Mount ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _MOUNT_EXEC_COMMAND_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(Unit *u) {
        Mount *m = FUNC0(u);

        FUNC1(m);

        m->where = FUNC5(m->where);

        FUNC6(&m->parameters_proc_self_mountinfo);
        FUNC6(&m->parameters_fragment);

        m->exec_runtime = FUNC4(m->exec_runtime, false);
        FUNC3(m->exec_command, _MOUNT_EXEC_COMMAND_MAX);
        m->control_command = NULL;

        FUNC2(&m->dynamic_creds);

        FUNC7(m);

        m->timer_event_source = FUNC8(m->timer_event_source);
}