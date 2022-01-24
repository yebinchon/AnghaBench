#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  status; int /*<<< orphan*/  code; } ;
struct TYPE_6__ {int restart; int /*<<< orphan*/  result; TYPE_1__ main_exec_status; int /*<<< orphan*/  restart_force_status; int /*<<< orphan*/  restart_prevent_status; scalar_t__ forbid_restart; } ;
typedef  TYPE_2__ Service ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVICE_FAILURE_CORE_DUMP ; 
 int /*<<< orphan*/  SERVICE_FAILURE_EXIT_CODE ; 
 int /*<<< orphan*/  SERVICE_FAILURE_SIGNAL ; 
 int /*<<< orphan*/  SERVICE_FAILURE_WATCHDOG ; 
#define  SERVICE_RESTART_ALWAYS 134 
#define  SERVICE_RESTART_NO 133 
#define  SERVICE_RESTART_ON_ABNORMAL 132 
#define  SERVICE_RESTART_ON_ABORT 131 
#define  SERVICE_RESTART_ON_FAILURE 130 
#define  SERVICE_RESTART_ON_SUCCESS 129 
#define  SERVICE_RESTART_ON_WATCHDOG 128 
 int /*<<< orphan*/  SERVICE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(Service *s, const char **reason) {
        FUNC1(s);

        /* Don't restart after manual stops */
        if (s->forbid_restart) {
                *reason = "manual stop";
                return false;
        }

        /* Never restart if this is configured as special exception */
        if (FUNC3(&s->restart_prevent_status, s->main_exec_status.code, s->main_exec_status.status)) {
                *reason = "prevented by exit status";
                return false;
        }

        /* Restart if the exit code/status are configured as restart triggers */
        if (FUNC3(&s->restart_force_status,  s->main_exec_status.code, s->main_exec_status.status)) {
                *reason = "forced by exit status";
                return true;
        }

        *reason = "restart setting";
        switch (s->restart) {

        case SERVICE_RESTART_NO:
                return false;

        case SERVICE_RESTART_ALWAYS:
                return true;

        case SERVICE_RESTART_ON_SUCCESS:
                return s->result == SERVICE_SUCCESS;

        case SERVICE_RESTART_ON_FAILURE:
                return s->result != SERVICE_SUCCESS;

        case SERVICE_RESTART_ON_ABNORMAL:
                return !FUNC0(s->result, SERVICE_SUCCESS, SERVICE_FAILURE_EXIT_CODE);

        case SERVICE_RESTART_ON_WATCHDOG:
                return s->result == SERVICE_FAILURE_WATCHDOG;

        case SERVICE_RESTART_ON_ABORT:
                return FUNC0(s->result, SERVICE_FAILURE_SIGNAL, SERVICE_FAILURE_CORE_DUMP);

        default:
                FUNC2("unknown restart setting");
        }
}