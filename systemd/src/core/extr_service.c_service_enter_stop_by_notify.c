
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int timeout_stop_usec; } ;
typedef TYPE_1__ Service ;


 int CLOCK_MONOTONIC ;
 int SERVICE_STOP_SIGTERM ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int now (int ) ;
 int service_arm_timer (TYPE_1__*,int ) ;
 int service_set_state (TYPE_1__*,int ) ;
 int unit_enqueue_rewatch_pids (int ) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static void service_enter_stop_by_notify(Service *s) {
        assert(s);

        (void) unit_enqueue_rewatch_pids(UNIT(s));

        service_arm_timer(s, usec_add(now(CLOCK_MONOTONIC), s->timeout_stop_usec));


        service_set_state(s, SERVICE_STOP_SIGTERM);
}
