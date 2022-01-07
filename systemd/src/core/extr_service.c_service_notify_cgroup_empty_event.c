
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_10__ {int state; int pid_file_pathspec; int type; } ;
typedef TYPE_1__ Service ;


 TYPE_1__* SERVICE (int *) ;
 int SERVICE_FAILURE_PROTOCOL ;


 int SERVICE_NOTIFY ;







 int SERVICE_SUCCESS ;
 int _fallthrough_ ;
 int assert (int *) ;
 int control_pid_good (TYPE_1__*) ;
 int log_unit_debug (int *,char*) ;
 int log_unit_warning (int *,char*) ;
 int main_pid_good (TYPE_1__*) ;
 int service_enter_dead (TYPE_1__*,int ,int) ;
 int service_enter_running (TYPE_1__*,int ) ;
 int service_enter_stop (TYPE_1__*,int ) ;
 int service_enter_stop_post (TYPE_1__*,int ) ;
 int service_unwatch_pid_file (TYPE_1__*) ;

__attribute__((used)) static void service_notify_cgroup_empty_event(Unit *u) {
        Service *s = SERVICE(u);

        assert(u);

        log_unit_debug(u, "Control group is empty.");

        switch (s->state) {







        case 133:
                if (s->type == SERVICE_NOTIFY &&
                    main_pid_good(s) == 0 &&
                    control_pid_good(s) == 0) {

                        service_enter_stop_post(s, SERVICE_FAILURE_PROTOCOL);
                        break;
                }

                _fallthrough_;
        case 132:
                if (s->pid_file_pathspec &&
                    main_pid_good(s) == 0 &&
                    control_pid_good(s) == 0) {


                        log_unit_warning(u, "Daemon never wrote its PID file. Failing.");

                        service_unwatch_pid_file(s);
                        if (s->state == 133)
                                service_enter_stop_post(s, SERVICE_FAILURE_PROTOCOL);
                        else
                                service_enter_stop(s, SERVICE_FAILURE_PROTOCOL);
                }
                break;

        case 134:

                service_enter_running(s, SERVICE_SUCCESS);
                break;

        case 128:
        case 129:
        case 130:

                if (main_pid_good(s) <= 0 && control_pid_good(s) <= 0)
                        service_enter_stop_post(s, SERVICE_SUCCESS);

                break;

        case 131:
        case 135:
        case 136:
                if (main_pid_good(s) <= 0 && control_pid_good(s) <= 0)
                        service_enter_dead(s, SERVICE_SUCCESS, 1);

                break;

        default:
                ;
        }
}
