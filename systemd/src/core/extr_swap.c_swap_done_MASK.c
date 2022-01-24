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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_8__ {void* options; void* what; } ;
struct TYPE_9__ {int /*<<< orphan*/  timer_event_source; int /*<<< orphan*/  dynamic_creds; int /*<<< orphan*/ * control_command; int /*<<< orphan*/  exec_command; int /*<<< orphan*/  exec_runtime; TYPE_1__ parameters_fragment; void* what; } ;
typedef  TYPE_2__ Swap ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _SWAP_EXEC_COMMAND_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC10(Unit *u) {
        Swap *s = FUNC0(u);

        FUNC1(s);

        FUNC8(s);
        FUNC7(s, NULL);

        s->what = FUNC5(s->what);
        s->parameters_fragment.what = FUNC5(s->parameters_fragment.what);
        s->parameters_fragment.options = FUNC5(s->parameters_fragment.options);

        s->exec_runtime = FUNC4(s->exec_runtime, false);
        FUNC3(s->exec_command, _SWAP_EXEC_COMMAND_MAX);
        s->control_command = NULL;

        FUNC2(&s->dynamic_creds);

        FUNC9(s);

        s->timer_event_source = FUNC6(s->timer_event_source);
}