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
struct TYPE_10__ {scalar_t__ n_retry_umount; scalar_t__ control_pid; scalar_t__ control_command_id; int /*<<< orphan*/  reload_result; int /*<<< orphan*/  result; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Mount ;
typedef  TYPE_1__ FILE ;
typedef  TYPE_1__ FDSet ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 char* PID_FMT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(Unit *u, FILE *f, FDSet *fds) {
        Mount *m = FUNC0(u);

        FUNC1(m);
        FUNC1(f);
        FUNC1(fds);

        (void) FUNC5(f, "state", FUNC4(m->state));
        (void) FUNC5(f, "result", FUNC3(m->result));
        (void) FUNC5(f, "reload-result", FUNC3(m->reload_result));
        (void) FUNC6(f, "n-retry-umount", "%u", m->n_retry_umount);

        if (m->control_pid > 0)
                (void) FUNC6(f, "control-pid", PID_FMT, m->control_pid);

        if (m->control_command_id >= 0)
                (void) FUNC5(f, "control-command", FUNC2(m->control_command_id));

        return 0;
}