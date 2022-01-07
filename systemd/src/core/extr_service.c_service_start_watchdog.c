
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_15__ {TYPE_1__* manager; } ;
struct TYPE_13__ {int monotonic; } ;
struct TYPE_14__ {scalar_t__ watchdog_event_source; TYPE_2__ watchdog_timestamp; } ;
struct TYPE_12__ {int event; } ;
typedef TYPE_3__ Service ;


 int CLOCK_MONOTONIC ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int SD_EVENT_ONESHOT ;
 int SD_EVENT_PRIORITY_IDLE ;
 TYPE_8__* UNIT (TYPE_3__*) ;
 int USEC_INFINITY ;
 int assert (TYPE_3__*) ;
 int log_unit_warning_errno (TYPE_8__*,int,char*) ;
 int sd_event_add_time (int ,scalar_t__*,int ,int ,int ,int ,TYPE_3__*) ;
 int sd_event_source_set_description (scalar_t__,char*) ;
 int sd_event_source_set_enabled (scalar_t__,int ) ;
 int sd_event_source_set_priority (scalar_t__,int ) ;
 int sd_event_source_set_time (scalar_t__,int ) ;
 int service_dispatch_watchdog ;
 int service_get_watchdog_usec (TYPE_3__*) ;
 int service_stop_watchdog (TYPE_3__*) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static void service_start_watchdog(Service *s) {
        usec_t watchdog_usec;
        int r;

        assert(s);

        watchdog_usec = service_get_watchdog_usec(s);
        if (IN_SET(watchdog_usec, 0, USEC_INFINITY)) {
                service_stop_watchdog(s);
                return;
        }

        if (s->watchdog_event_source) {
                r = sd_event_source_set_time(s->watchdog_event_source, usec_add(s->watchdog_timestamp.monotonic, watchdog_usec));
                if (r < 0) {
                        log_unit_warning_errno(UNIT(s), r, "Failed to reset watchdog timer: %m");
                        return;
                }

                r = sd_event_source_set_enabled(s->watchdog_event_source, SD_EVENT_ONESHOT);
        } else {
                r = sd_event_add_time(
                                UNIT(s)->manager->event,
                                &s->watchdog_event_source,
                                CLOCK_MONOTONIC,
                                usec_add(s->watchdog_timestamp.monotonic, watchdog_usec), 0,
                                service_dispatch_watchdog, s);
                if (r < 0) {
                        log_unit_warning_errno(UNIT(s), r, "Failed to add watchdog timer: %m");
                        return;
                }

                (void) sd_event_source_set_description(s->watchdog_event_source, "service-watchdog");



                r = sd_event_source_set_priority(s->watchdog_event_source, SD_EVENT_PRIORITY_IDLE);
        }
        if (r < 0)
                log_unit_warning_errno(UNIT(s), r, "Failed to install watchdog timer: %m");
}
