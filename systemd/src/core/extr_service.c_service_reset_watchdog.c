
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int watchdog_timestamp; } ;
typedef TYPE_1__ Service ;


 int assert (TYPE_1__*) ;
 int dual_timestamp_get (int *) ;
 int service_start_watchdog (TYPE_1__*) ;

__attribute__((used)) static void service_reset_watchdog(Service *s) {
        assert(s);

        dual_timestamp_get(&s->watchdog_timestamp);
        service_start_watchdog(s);
}
