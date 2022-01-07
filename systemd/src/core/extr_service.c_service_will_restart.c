
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ will_auto_restart; } ;
typedef TYPE_1__ Service ;


 TYPE_1__* SERVICE (int *) ;
 scalar_t__ SERVICE_AUTO_RESTART ;
 int assert (TYPE_1__*) ;
 int unit_will_restart_default (int *) ;

__attribute__((used)) static bool service_will_restart(Unit *u) {
        Service *s = SERVICE(u);

        assert(s);

        if (s->will_auto_restart)
                return 1;
        if (s->state == SERVICE_AUTO_RESTART)
                return 1;

        return unit_will_restart_default(u);
}
