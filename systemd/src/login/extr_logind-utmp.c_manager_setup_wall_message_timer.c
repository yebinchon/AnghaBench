
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_6__ {scalar_t__ scheduled_shutdown_timeout; scalar_t__ wall_message_timeout_source; int event; int scheduled_shutdown_type; } ;
typedef TYPE_1__ Manager ;


 int CLOCK_REALTIME ;
 int SD_EVENT_ONESHOT ;
 int USEC_PER_MINUTE ;
 int assert (TYPE_1__*) ;
 scalar_t__ isempty (int ) ;
 int log_error_errno (int,char*) ;
 scalar_t__ now (int ) ;
 int sd_event_add_time (int ,scalar_t__*,int ,scalar_t__,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_enabled (scalar_t__,int ) ;
 int sd_event_source_set_time (scalar_t__,scalar_t__) ;
 int wall_message_timeout_handler ;
 int warn_wall (TYPE_1__*,scalar_t__) ;
 scalar_t__ when_wall (scalar_t__,scalar_t__) ;

int manager_setup_wall_message_timer(Manager *m) {

        usec_t n, elapse;
        int r;

        assert(m);

        n = now(CLOCK_REALTIME);
        elapse = m->scheduled_shutdown_timeout;



        if (isempty(m->scheduled_shutdown_type)) {
                warn_wall(m, n);
                return 0;
        }

        if (elapse < n)
                return 0;


        if (elapse - n < 15 * USEC_PER_MINUTE) {
                r = warn_wall(m, n);
                if (r == 0)
                        return 0;
        }

        elapse = when_wall(n, elapse);
        if (elapse == 0)
                return 0;

        if (m->wall_message_timeout_source) {
                r = sd_event_source_set_time(m->wall_message_timeout_source, n + elapse);
                if (r < 0)
                        return log_error_errno(r, "sd_event_source_set_time() failed. %m");

                r = sd_event_source_set_enabled(m->wall_message_timeout_source, SD_EVENT_ONESHOT);
                if (r < 0)
                        return log_error_errno(r, "sd_event_source_set_enabled() failed. %m");
        } else {
                r = sd_event_add_time(m->event, &m->wall_message_timeout_source,
                                      CLOCK_REALTIME, n + elapse, 0, wall_message_timeout_handler, m);
                if (r < 0)
                        return log_error_errno(r, "sd_event_add_time() failed. %m");
        }

        return 0;
}
