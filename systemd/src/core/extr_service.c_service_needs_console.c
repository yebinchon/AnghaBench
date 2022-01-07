
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int state; int exec_context; } ;
typedef TYPE_1__ Service ;


 int IN_SET (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__* SERVICE (int *) ;
 int SERVICE_CONDITION ;
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
 int assert (TYPE_1__*) ;
 int exec_context_may_touch_console (int *) ;

__attribute__((used)) static bool service_needs_console(Unit *u) {
        Service *s = SERVICE(u);

        assert(s);




        if (!exec_context_may_touch_console(&s->exec_context))
                return 0;

        return IN_SET(s->state,
                      SERVICE_CONDITION,
                      SERVICE_START_PRE,
                      SERVICE_START,
                      SERVICE_START_POST,
                      SERVICE_RUNNING,
                      SERVICE_RELOAD,
                      SERVICE_STOP,
                      SERVICE_STOP_WATCHDOG,
                      SERVICE_STOP_SIGTERM,
                      SERVICE_STOP_SIGKILL,
                      SERVICE_STOP_POST,
                      SERVICE_FINAL_SIGTERM,
                      SERVICE_FINAL_SIGKILL);
}
