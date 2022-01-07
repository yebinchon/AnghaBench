
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_17__ {scalar_t__ result; scalar_t__ notify_state; scalar_t__ remain_after_exit; int runtime_max_usec; } ;
struct TYPE_16__ {int monotonic; } ;
struct TYPE_15__ {TYPE_1__ active_enter_timestamp; } ;
typedef scalar_t__ ServiceResult ;
typedef TYPE_2__ Service ;


 scalar_t__ NOTIFY_RELOADING ;
 scalar_t__ NOTIFY_STOPPING ;
 int SERVICE_EXITED ;
 int SERVICE_RUNNING ;
 int SERVICE_STOP_SIGTERM ;
 scalar_t__ SERVICE_SUCCESS ;
 TYPE_13__* UNIT (TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int service_arm_timer (TYPE_2__*,int ) ;
 int service_enter_reload_by_notify (TYPE_2__*) ;
 int service_enter_signal (TYPE_2__*,int ,scalar_t__) ;
 int service_enter_stop (TYPE_2__*,scalar_t__) ;
 int service_enter_stop_by_notify (TYPE_2__*) ;
 scalar_t__ service_good (TYPE_2__*) ;
 int service_set_state (TYPE_2__*,int ) ;
 int service_unwatch_control_pid (TYPE_2__*) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static void service_enter_running(Service *s, ServiceResult f) {
        assert(s);

        if (s->result == SERVICE_SUCCESS)
                s->result = f;

        service_unwatch_control_pid(s);

        if (s->result != SERVICE_SUCCESS)
                service_enter_signal(s, SERVICE_STOP_SIGTERM, f);
        else if (service_good(s)) {


                if (s->notify_state == NOTIFY_RELOADING)
                        service_enter_reload_by_notify(s);
                else if (s->notify_state == NOTIFY_STOPPING)
                        service_enter_stop_by_notify(s);
                else {
                        service_set_state(s, SERVICE_RUNNING);
                        service_arm_timer(s, usec_add(UNIT(s)->active_enter_timestamp.monotonic, s->runtime_max_usec));
                }

        } else if (s->remain_after_exit)
                service_set_state(s, SERVICE_EXITED);
        else
                service_enter_stop(s, SERVICE_SUCCESS);
}
