
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* manager; } ;
struct TYPE_9__ {char* status_text; } ;
struct TYPE_8__ {int service_watchdogs; } ;
typedef TYPE_2__ Service ;


 int SERVICE_FAILURE_WATCHDOG ;
 int SERVICE_STOP_WATCHDOG ;
 TYPE_5__* UNIT (TYPE_2__*) ;
 int log_unit_error (TYPE_5__*,char*,char*) ;
 int service_enter_signal (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void service_force_watchdog(Service *s) {
        if (!UNIT(s)->manager->service_watchdogs)
                return;

        log_unit_error(UNIT(s), "Watchdog request (last status: %s)!",
                       s->status_text ? s->status_text : "<unset>");

        service_enter_signal(s, SERVICE_STOP_WATCHDOG, SERVICE_FAILURE_WATCHDOG);
}
