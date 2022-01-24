#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UnitActiveState ;
struct TYPE_18__ {int /*<<< orphan*/  manager; scalar_t__ job; } ;
struct TYPE_17__ {size_t state; scalar_t__ type; scalar_t__ reload_result; scalar_t__ result; scalar_t__ will_auto_restart; void* exec_fd_event_source; int /*<<< orphan*/  control_command_id; int /*<<< orphan*/ * control_command; int /*<<< orphan*/ * main_command; void* timer_event_source; } ;
typedef  size_t ServiceState ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,size_t,size_t,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVICE_AUTO_RESTART ; 
 int /*<<< orphan*/  SERVICE_CLEANING ; 
 int /*<<< orphan*/  SERVICE_CONDITION ; 
 size_t SERVICE_DEAD ; 
 size_t SERVICE_EXITED ; 
 int /*<<< orphan*/  SERVICE_FAILED ; 
 int /*<<< orphan*/  SERVICE_FINAL_SIGKILL ; 
 int /*<<< orphan*/  SERVICE_FINAL_SIGTERM ; 
 scalar_t__ SERVICE_IDLE ; 
 int /*<<< orphan*/  SERVICE_RELOAD ; 
 int /*<<< orphan*/  SERVICE_RUNNING ; 
 scalar_t__ SERVICE_SKIP_CONDITION ; 
 size_t SERVICE_START ; 
 size_t SERVICE_START_POST ; 
 int /*<<< orphan*/  SERVICE_START_PRE ; 
 int /*<<< orphan*/  SERVICE_STOP ; 
 int /*<<< orphan*/  SERVICE_STOP_POST ; 
 int /*<<< orphan*/  SERVICE_STOP_SIGKILL ; 
 int /*<<< orphan*/  SERVICE_STOP_SIGTERM ; 
 int /*<<< orphan*/  SERVICE_STOP_WATCHDOG ; 
 scalar_t__ SERVICE_SUCCESS ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 int UNIT_NOTIFY_RELOAD_FAILURE ; 
 int UNIT_NOTIFY_SKIP_CONDITION ; 
 int UNIT_NOTIFY_WILL_AUTO_RESTART ; 
 int /*<<< orphan*/  _SERVICE_EXEC_COMMAND_INVALID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/ * state_translation_table ; 
 int /*<<< orphan*/ * state_translation_table_idle ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC17(Service *s, ServiceState state) {
        ServiceState old_state;
        const UnitActiveState *table;

        FUNC3(s);

        if (s->state != state)
                FUNC4(FUNC2(s), false);

        table = s->type == SERVICE_IDLE ? state_translation_table_idle : state_translation_table;

        old_state = s->state;
        s->state = state;

        FUNC12(s);

        if (!FUNC0(state,
                    SERVICE_CONDITION, SERVICE_START_PRE, SERVICE_START, SERVICE_START_POST,
                    SERVICE_RUNNING,
                    SERVICE_RELOAD,
                    SERVICE_STOP, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL, SERVICE_STOP_POST,
                    SERVICE_FINAL_SIGTERM, SERVICE_FINAL_SIGKILL,
                    SERVICE_AUTO_RESTART,
                    SERVICE_CLEANING))
                s->timer_event_source = FUNC6(s->timer_event_source);

        if (!FUNC0(state,
                    SERVICE_START, SERVICE_START_POST,
                    SERVICE_RUNNING, SERVICE_RELOAD,
                    SERVICE_STOP, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL, SERVICE_STOP_POST,
                    SERVICE_FINAL_SIGTERM, SERVICE_FINAL_SIGKILL)) {
                FUNC11(s);
                s->main_command = NULL;
        }

        if (!FUNC0(state,
                    SERVICE_CONDITION, SERVICE_START_PRE, SERVICE_START, SERVICE_START_POST,
                    SERVICE_RELOAD,
                    SERVICE_STOP, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL, SERVICE_STOP_POST,
                    SERVICE_FINAL_SIGTERM, SERVICE_FINAL_SIGKILL,
                    SERVICE_CLEANING)) {
                FUNC10(s);
                s->control_command = NULL;
                s->control_command_id = _SERVICE_EXEC_COMMAND_INVALID;
        }

        if (FUNC0(state, SERVICE_DEAD, SERVICE_FAILED, SERVICE_AUTO_RESTART)) {
                FUNC16(FUNC2(s));
                FUNC13(FUNC2(s));
        }

        if (!FUNC0(state,
                    SERVICE_CONDITION, SERVICE_START_PRE, SERVICE_START, SERVICE_START_POST,
                    SERVICE_RUNNING, SERVICE_RELOAD,
                    SERVICE_STOP, SERVICE_STOP_WATCHDOG, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL, SERVICE_STOP_POST,
                    SERVICE_FINAL_SIGTERM, SERVICE_FINAL_SIGKILL) &&
            !(state == SERVICE_DEAD && FUNC2(s)->job))
                FUNC7(s);

        if (state != SERVICE_START)
                s->exec_fd_event_source = FUNC6(s->exec_fd_event_source);

        if (!FUNC0(state, SERVICE_START_POST, SERVICE_RUNNING, SERVICE_RELOAD))
                FUNC9(s);

        /* For the inactive states unit_notify() will trim the cgroup,
         * but for exit we have to do that ourselves... */
        if (state == SERVICE_EXITED && !FUNC1(FUNC2(s)->manager))
                FUNC15(FUNC2(s));

        if (old_state != state)
                FUNC5(FUNC2(s), "Changed %s -> %s", FUNC8(old_state), FUNC8(state));

        FUNC14(FUNC2(s), table[old_state], table[state],
                    (s->reload_result == SERVICE_SUCCESS ? 0 : UNIT_NOTIFY_RELOAD_FAILURE) |
                    (s->will_auto_restart ? UNIT_NOTIFY_WILL_AUTO_RESTART : 0) |
                    (s->result == SERVICE_SKIP_CONDITION ? UNIT_NOTIFY_SKIP_CONDITION : 0));
}