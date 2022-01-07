
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int sd_event_source ;
struct TYPE_3__ {int send_watchdog; int watchdog_usec; int watchdog_event_source; int notify_event_source; } ;
typedef TYPE_1__ Server ;


 int SD_EVENT_ON ;
 int assert (TYPE_1__*) ;
 int log_error_errno (int,char*) ;
 int log_warning_errno (int,char*) ;
 int sd_event_source_set_enabled (int ,int ) ;
 int sd_event_source_set_time (int ,scalar_t__) ;

__attribute__((used)) static int dispatch_watchdog(sd_event_source *es, uint64_t usec, void *userdata) {
        Server *s = userdata;
        int r;

        assert(s);

        s->send_watchdog = 1;

        r = sd_event_source_set_enabled(s->notify_event_source, SD_EVENT_ON);
        if (r < 0)
                log_warning_errno(r, "Failed to turn on notify event source: %m");

        r = sd_event_source_set_time(s->watchdog_event_source, usec + s->watchdog_usec / 2);
        if (r < 0)
                return log_error_errno(r, "Failed to restart watchdog event source: %m");

        r = sd_event_source_set_enabled(s->watchdog_event_source, SD_EVENT_ON);
        if (r < 0)
                return log_error_errno(r, "Failed to enable watchdog event source: %m");

        return 0;
}
