
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
typedef int sd_event_source ;
struct TYPE_5__ {int timer_event_source; } ;
typedef TYPE_1__ Service ;


 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_unit_warning_errno (int ,int,char*,int ) ;
 int sd_event_source_get_description (int ,char const**) ;
 int sd_event_source_get_time (int *,scalar_t__*) ;
 int sd_event_source_set_time (int *,scalar_t__) ;
 int strna (char const*) ;

__attribute__((used)) static void service_extend_event_source_timeout(Service *s, sd_event_source *source, usec_t extended) {
        usec_t current;
        int r;

        assert(s);




        if (!source)
                return;

        r = sd_event_source_get_time(source, &current);
        if (r < 0) {
                const char *desc;
                (void) sd_event_source_get_description(s->timer_event_source, &desc);
                log_unit_warning_errno(UNIT(s), r, "Failed to retrieve timeout time for event source '%s', ignoring: %m", strna(desc));
                return;
        }

        if (current >= extended)
                return;

        r = sd_event_source_set_time(source, extended);
        if (r < 0) {
                const char *desc;
                (void) sd_event_source_get_description(s->timer_event_source, &desc);
                log_unit_warning_errno(UNIT(s), r, "Failed to set timeout time for even source '%s', ignoring %m", strna(desc));
        }
}
