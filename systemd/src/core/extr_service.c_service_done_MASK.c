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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_9__ {void* exec_fd_event_source; void* timer_event_source; int /*<<< orphan*/  accept_socket; int /*<<< orphan*/  peer; void* usb_function_strings; void* usb_function_descriptors; void* bus_name_owner; void* bus_name; int /*<<< orphan*/  success_status; int /*<<< orphan*/  restart_force_status; int /*<<< orphan*/  restart_prevent_status; int /*<<< orphan*/  dynamic_creds; int /*<<< orphan*/ * main_command; int /*<<< orphan*/ * control_command; int /*<<< orphan*/  exec_command; int /*<<< orphan*/  exec_runtime; void* status_text; void* pid_file; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _SERVICE_EXEC_COMMAND_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (void*) ; 
 void* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void FUNC17(Unit *u) {
        Service *s = FUNC0(u);

        FUNC1(s);

        s->pid_file = FUNC6(s->pid_file);
        s->status_text = FUNC6(s->status_text);

        s->exec_runtime = FUNC4(s->exec_runtime, false);
        FUNC3(s->exec_command, _SERVICE_EXEC_COMMAND_MAX);
        s->control_command = NULL;
        s->main_command = NULL;

        FUNC2(&s->dynamic_creds);

        FUNC5(&s->restart_prevent_status);
        FUNC5(&s->restart_force_status);
        FUNC5(&s->success_status);

        /* This will leak a process, but at least no memory or any of
         * our resources */
        FUNC12(s);
        FUNC11(s);
        FUNC13(s);

        if (s->bus_name)  {
                FUNC16(u, s->bus_name);
                s->bus_name = FUNC6(s->bus_name);
        }

        s->bus_name_owner = FUNC6(s->bus_name_owner);

        s->usb_function_descriptors = FUNC6(s->usb_function_descriptors);
        s->usb_function_strings = FUNC6(s->usb_function_strings);

        FUNC8(s);
        s->peer = FUNC14(s->peer);

        FUNC15(&s->accept_socket);

        FUNC10(s);

        s->timer_event_source = FUNC7(s->timer_event_source);
        s->exec_fd_event_source = FUNC7(s->exec_fd_event_source);

        FUNC9(u);
}