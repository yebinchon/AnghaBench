
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_8__ {int forbid_restart; scalar_t__ state; } ;
typedef TYPE_1__ Service ;


 TYPE_1__* IN_SET (scalar_t__,int ,int ,...) ;
 TYPE_1__* SERVICE (int *) ;
 scalar_t__ SERVICE_AUTO_RESTART ;
 scalar_t__ SERVICE_CLEANING ;
 int SERVICE_CONDITION ;
 int SERVICE_DEAD ;
 int SERVICE_EXITED ;
 int SERVICE_FINAL_SIGKILL ;
 int SERVICE_FINAL_SIGTERM ;
 int SERVICE_RELOAD ;
 int SERVICE_RUNNING ;
 int SERVICE_START ;
 int SERVICE_START_POST ;
 int SERVICE_START_PRE ;
 int SERVICE_STOP ;
 int SERVICE_STOP_POST ;
 int SERVICE_STOP_SIGKILL ;
 int SERVICE_STOP_SIGTERM ;
 int SERVICE_STOP_WATCHDOG ;
 int SERVICE_SUCCESS ;
 int assert (TYPE_1__*) ;
 int service_enter_signal (TYPE_1__*,int ,int ) ;
 int service_enter_stop (TYPE_1__*,int ) ;
 int service_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static int service_stop(Unit *u) {
        Service *s = SERVICE(u);

        assert(s);


        s->forbid_restart = 1;


        if (IN_SET(s->state,
                   SERVICE_STOP, SERVICE_STOP_SIGTERM, SERVICE_STOP_SIGKILL, SERVICE_STOP_POST,
                   SERVICE_FINAL_SIGTERM, SERVICE_FINAL_SIGKILL))
                return 0;


        if (s->state == SERVICE_AUTO_RESTART) {
                service_set_state(s, SERVICE_DEAD);
                return 0;
        }



        if (IN_SET(s->state, SERVICE_CONDITION, SERVICE_START_PRE, SERVICE_START, SERVICE_START_POST, SERVICE_RELOAD, SERVICE_STOP_WATCHDOG)) {
                service_enter_signal(s, SERVICE_STOP_SIGTERM, SERVICE_SUCCESS);
                return 0;
        }


        if (s->state == SERVICE_CLEANING) {
                service_enter_signal(s, SERVICE_FINAL_SIGKILL, SERVICE_SUCCESS);
                return 0;
        }

        assert(IN_SET(s->state, SERVICE_RUNNING, SERVICE_EXITED));

        service_enter_stop(s, SERVICE_SUCCESS);
        return 1;
}
