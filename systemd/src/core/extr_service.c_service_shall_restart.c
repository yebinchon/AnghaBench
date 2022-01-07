
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status; int code; } ;
struct TYPE_6__ {int restart; int result; TYPE_1__ main_exec_status; int restart_force_status; int restart_prevent_status; scalar_t__ forbid_restart; } ;
typedef TYPE_2__ Service ;


 int IN_SET (int ,int ,int ) ;
 int SERVICE_FAILURE_CORE_DUMP ;
 int SERVICE_FAILURE_EXIT_CODE ;
 int SERVICE_FAILURE_SIGNAL ;
 int SERVICE_FAILURE_WATCHDOG ;







 int SERVICE_SUCCESS ;
 int assert (TYPE_2__*) ;
 int assert_not_reached (char*) ;
 scalar_t__ exit_status_set_test (int *,int ,int ) ;

__attribute__((used)) static bool service_shall_restart(Service *s, const char **reason) {
        assert(s);


        if (s->forbid_restart) {
                *reason = "manual stop";
                return 0;
        }


        if (exit_status_set_test(&s->restart_prevent_status, s->main_exec_status.code, s->main_exec_status.status)) {
                *reason = "prevented by exit status";
                return 0;
        }


        if (exit_status_set_test(&s->restart_force_status, s->main_exec_status.code, s->main_exec_status.status)) {
                *reason = "forced by exit status";
                return 1;
        }

        *reason = "restart setting";
        switch (s->restart) {

        case 133:
                return 0;

        case 134:
                return 1;

        case 129:
                return s->result == SERVICE_SUCCESS;

        case 130:
                return s->result != SERVICE_SUCCESS;

        case 132:
                return !IN_SET(s->result, SERVICE_SUCCESS, SERVICE_FAILURE_EXIT_CODE);

        case 128:
                return s->result == SERVICE_FAILURE_WATCHDOG;

        case 131:
                return IN_SET(s->result, SERVICE_FAILURE_SIGNAL, SERVICE_FAILURE_CORE_DUMP);

        default:
                assert_not_reached("unknown restart setting");
        }
}
