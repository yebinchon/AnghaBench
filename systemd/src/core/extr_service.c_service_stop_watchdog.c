
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int watchdog_timestamp; int watchdog_event_source; } ;
typedef TYPE_1__ Service ;


 int DUAL_TIMESTAMP_NULL ;
 int assert (TYPE_1__*) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void service_stop_watchdog(Service *s) {
        assert(s);

        s->watchdog_event_source = sd_event_source_unref(s->watchdog_event_source);
        s->watchdog_timestamp = DUAL_TIMESTAMP_NULL;
}
