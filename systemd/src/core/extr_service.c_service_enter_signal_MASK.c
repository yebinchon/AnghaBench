#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ send_sigkill; } ;
struct TYPE_12__ {scalar_t__ result; TYPE_2__ kill_context; int /*<<< orphan*/  timeout_stop_usec; int /*<<< orphan*/  main_pid_alien; int /*<<< orphan*/  control_pid; int /*<<< orphan*/  main_pid; } ;
typedef  int /*<<< orphan*/  ServiceState ;
typedef  scalar_t__ ServiceResult ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ SERVICE_FAILURE_RESOURCES ; 
 int /*<<< orphan*/  SERVICE_FINAL_SIGKILL ; 
 int /*<<< orphan*/  SERVICE_FINAL_SIGTERM ; 
 int /*<<< orphan*/  SERVICE_STOP_SIGKILL ; 
 int /*<<< orphan*/  SERVICE_STOP_SIGTERM ; 
 int /*<<< orphan*/  SERVICE_STOP_WATCHDOG ; 
 scalar_t__ SERVICE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(Service *s, ServiceState state, ServiceResult f) {
        int r;

        FUNC2(s);

        if (s->result == SERVICE_SUCCESS)
                s->result = f;

        /* Before sending any signal, make sure we track all members of this cgroup */
        (void) FUNC13(FUNC1(s));

        /* Also, enqueue a job that we recheck all our PIDs a bit later, given that it's likely some processes have
         * died now */
        (void) FUNC11(FUNC1(s));

        r = FUNC12(
                        FUNC1(s),
                        &s->kill_context,
                        FUNC10(s, state),
                        s->main_pid,
                        s->control_pid,
                        s->main_pid_alien);
        if (r < 0)
                goto fail;

        if (r > 0) {
                r = FUNC5(s, FUNC14(FUNC4(CLOCK_MONOTONIC),
                                      state == SERVICE_STOP_WATCHDOG ? FUNC9(s) : s->timeout_stop_usec));
                if (r < 0)
                        goto fail;

                FUNC8(s, state);
        } else if (FUNC0(state, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM) && s->kill_context.send_sigkill)
                FUNC15(s, SERVICE_STOP_SIGKILL, SERVICE_SUCCESS);
        else if (FUNC0(state, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL))
                FUNC7(s, SERVICE_SUCCESS);
        else if (state == SERVICE_FINAL_SIGTERM && s->kill_context.send_sigkill)
                FUNC15(s, SERVICE_FINAL_SIGKILL, SERVICE_SUCCESS);
        else
                FUNC6(s, SERVICE_SUCCESS, true);

        return;

fail:
        FUNC3(FUNC1(s), r, "Failed to kill processes: %m");

        if (FUNC0(state, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL))
                FUNC7(s, SERVICE_FAILURE_RESOURCES);
        else
                FUNC6(s, SERVICE_FAILURE_RESOURCES, true);
}