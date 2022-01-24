#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ result; size_t control_command_id; int /*<<< orphan*/  control_pid; int /*<<< orphan*/  timeout_stop_usec; scalar_t__ control_command; scalar_t__* exec_command; } ;
typedef  scalar_t__ ServiceResult ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 int EXEC_APPLY_CHROOT ; 
 int EXEC_APPLY_SANDBOXING ; 
 int EXEC_CONTROL_CGROUP ; 
 int EXEC_IS_CONTROL ; 
 int EXEC_SETENV_RESULT ; 
 size_t SERVICE_EXEC_STOP ; 
 scalar_t__ SERVICE_FAILURE_RESOURCES ; 
 int /*<<< orphan*/  SERVICE_STOP ; 
 int /*<<< orphan*/  SERVICE_STOP_SIGTERM ; 
 scalar_t__ SERVICE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(Service *s, ServiceResult f) {
        int r;

        FUNC1(s);

        if (s->result == SERVICE_SUCCESS)
                s->result = f;

        FUNC6(s);
        (void) FUNC7(FUNC0(s));

        s->control_command = s->exec_command[SERVICE_EXEC_STOP];
        if (s->control_command) {
                s->control_command_id = SERVICE_EXEC_STOP;

                r = FUNC5(s,
                                  s->control_command,
                                  s->timeout_stop_usec,
                                  EXEC_APPLY_SANDBOXING|EXEC_APPLY_CHROOT|EXEC_IS_CONTROL|EXEC_SETENV_RESULT|EXEC_CONTROL_CGROUP,
                                  &s->control_pid);
                if (r < 0)
                        goto fail;

                FUNC4(s, SERVICE_STOP);
        } else
                FUNC3(s, SERVICE_STOP_SIGTERM, SERVICE_SUCCESS);

        return;

fail:
        FUNC2(FUNC0(s), r, "Failed to run 'stop' task: %m");
        FUNC3(s, SERVICE_STOP_SIGTERM, SERVICE_FAILURE_RESOURCES);
}