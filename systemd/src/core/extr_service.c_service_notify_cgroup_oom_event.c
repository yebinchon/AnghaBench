
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {scalar_t__ oom_policy; int state; int result; } ;
typedef TYPE_1__ Service ;


 scalar_t__ OOM_CONTINUE ;
 scalar_t__ OOM_KILL ;
 scalar_t__ OOM_STOP ;
 TYPE_1__* SERVICE (int *) ;


 int SERVICE_FAILURE_OOM_KILL ;
 int SERVICE_SUCCESS ;
 int log_unit_debug (int *,char*) ;
 int service_enter_signal (TYPE_1__*,int const,int ) ;
 int service_enter_stop (TYPE_1__*,int ) ;

__attribute__((used)) static void service_notify_cgroup_oom_event(Unit *u) {
        Service *s = SERVICE(u);

        log_unit_debug(u, "Process of control group was killed by the OOM killer.");

        if (s->oom_policy == OOM_CONTINUE)
                return;

        switch (s->state) {

        case 140:
        case 133:
        case 135:
        case 134:
        case 132:
                if (s->oom_policy == OOM_STOP)
                        service_enter_signal(s, 129, SERVICE_FAILURE_OOM_KILL);
                else if (s->oom_policy == OOM_KILL)
                        service_enter_signal(s, 130, SERVICE_FAILURE_OOM_KILL);

                break;

        case 139:
        case 136:
                if (s->oom_policy == OOM_STOP)
                        service_enter_stop(s, SERVICE_FAILURE_OOM_KILL);
                else if (s->oom_policy == OOM_KILL)
                        service_enter_signal(s, 130, SERVICE_FAILURE_OOM_KILL);

                break;

        case 128:
        case 129:
                service_enter_signal(s, 130, SERVICE_FAILURE_OOM_KILL);
                break;

        case 130:
        case 138:
                if (s->result == SERVICE_SUCCESS)
                        s->result = SERVICE_FAILURE_OOM_KILL;
                break;

        case 131:
        case 137:
                service_enter_signal(s, 138, SERVICE_FAILURE_OOM_KILL);
                break;

        default:
                ;
        }
}
