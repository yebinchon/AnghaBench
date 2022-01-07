
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
typedef int uint64_t ;
struct dual_timestamp {scalar_t__ monotonic; } ;
typedef int sd_event_source ;
struct TYPE_6__ {scalar_t__ idle_action; scalar_t__ idle_action_usec; scalar_t__ idle_action_not_before_usec; int idle_action_event_source; int event; } ;
typedef TYPE_1__ Manager ;


 int CLOCK_MONOTONIC ;
 scalar_t__ HANDLE_IGNORE ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int SD_EVENT_ONESHOT ;
 scalar_t__ SD_EVENT_PRIORITY_IDLE ;
 int USEC_PER_SEC ;
 int assert (TYPE_1__*) ;
 int handle_action_to_string (scalar_t__) ;
 int log_error_errno (int,char*) ;
 int log_info (char*,int ) ;
 int manager_get_idle_hint (TYPE_1__*,struct dual_timestamp*) ;
 int manager_handle_action (TYPE_1__*,int ,scalar_t__,int,int) ;
 scalar_t__ now (int ) ;
 int sd_event_add_time (int ,int *,int ,scalar_t__,int,int (*) (int *,int ,void*),TYPE_1__*) ;
 int sd_event_source_set_enabled (int ,int ) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;
 int sd_event_source_set_time (int ,scalar_t__) ;

__attribute__((used)) static int manager_dispatch_idle_action(sd_event_source *s, uint64_t t, void *userdata) {
        Manager *m = userdata;
        struct dual_timestamp since;
        usec_t n, elapse;
        int r;

        assert(m);

        if (m->idle_action == HANDLE_IGNORE ||
            m->idle_action_usec <= 0)
                return 0;

        n = now(CLOCK_MONOTONIC);

        r = manager_get_idle_hint(m, &since);
        if (r <= 0)

                elapse = n + m->idle_action_usec;
        else {



                if (n >= since.monotonic + m->idle_action_usec &&
                    (m->idle_action_not_before_usec <= 0 || n >= m->idle_action_not_before_usec + m->idle_action_usec)) {
                        log_info("System idle. Doing %s operation.", handle_action_to_string(m->idle_action));

                        manager_handle_action(m, 0, m->idle_action, 0, 0);
                        m->idle_action_not_before_usec = n;
                }

                elapse = MAX(since.monotonic, m->idle_action_not_before_usec) + m->idle_action_usec;
        }

        if (!m->idle_action_event_source) {

                r = sd_event_add_time(
                                m->event,
                                &m->idle_action_event_source,
                                CLOCK_MONOTONIC,
                                elapse, USEC_PER_SEC*30,
                                manager_dispatch_idle_action, m);
                if (r < 0)
                        return log_error_errno(r, "Failed to add idle event source: %m");

                r = sd_event_source_set_priority(m->idle_action_event_source, SD_EVENT_PRIORITY_IDLE+10);
                if (r < 0)
                        return log_error_errno(r, "Failed to set idle event source priority: %m");
        } else {
                r = sd_event_source_set_time(m->idle_action_event_source, elapse);
                if (r < 0)
                        return log_error_errno(r, "Failed to set idle event timer: %m");

                r = sd_event_source_set_enabled(m->idle_action_event_source, SD_EVENT_ONESHOT);
                if (r < 0)
                        return log_error_errno(r, "Failed to enable idle event timer: %m");
        }

        return 0;
}
