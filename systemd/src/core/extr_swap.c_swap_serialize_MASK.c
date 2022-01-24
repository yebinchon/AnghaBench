#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_10__ {scalar_t__ control_pid; scalar_t__ control_command_id; int /*<<< orphan*/  result; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Swap ;
typedef  TYPE_1__ FILE ;
typedef  TYPE_1__ FDSet ;

/* Variables and functions */
 int /*<<< orphan*/  PID_FMT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(Unit *u, FILE *f, FDSet *fds) {
        Swap *s = FUNC0(u);

        FUNC1(s);
        FUNC1(f);
        FUNC1(fds);

        (void) FUNC2(f, "state", FUNC6(s->state));
        (void) FUNC2(f, "result", FUNC5(s->result));

        if (s->control_pid > 0)
                (void) FUNC3(f, "control-pid", PID_FMT, s->control_pid);

        if (s->control_command_id >= 0)
                (void) FUNC2(f, "control-command", FUNC4(s->control_command_id));

        return 0;
}