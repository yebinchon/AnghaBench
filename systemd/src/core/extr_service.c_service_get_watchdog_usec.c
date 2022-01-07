
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_4__ {int watchdog_original_usec; int watchdog_override_usec; scalar_t__ watchdog_override_enable; } ;
typedef TYPE_1__ Service ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static usec_t service_get_watchdog_usec(Service *s) {
        assert(s);

        if (s->watchdog_override_enable)
                return s->watchdog_override_usec;

        return s->watchdog_original_usec;
}
