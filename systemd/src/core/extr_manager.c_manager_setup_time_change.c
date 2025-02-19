
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ time_change_fd; int time_change_event_source; int event; } ;
typedef TYPE_1__ Manager ;


 int EPOLLIN ;
 scalar_t__ MANAGER_IS_TEST_RUN (TYPE_1__*) ;
 scalar_t__ SD_EVENT_PRIORITY_NORMAL ;
 int assert (TYPE_1__*) ;
 int log_debug (char*) ;
 int log_error_errno (int,char*) ;
 int manager_dispatch_time_change_fd ;
 scalar_t__ safe_close (scalar_t__) ;
 int sd_event_add_io (int ,int *,int,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_description (int ,char*) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;
 int sd_event_source_unref (int ) ;
 scalar_t__ time_change_fd () ;

__attribute__((used)) static int manager_setup_time_change(Manager *m) {
        int r;

        assert(m);

        if (MANAGER_IS_TEST_RUN(m))
                return 0;

        m->time_change_event_source = sd_event_source_unref(m->time_change_event_source);
        m->time_change_fd = safe_close(m->time_change_fd);

        m->time_change_fd = time_change_fd();
        if (m->time_change_fd < 0)
                return log_error_errno(m->time_change_fd, "Failed to create timer change timer fd: %m");

        r = sd_event_add_io(m->event, &m->time_change_event_source, m->time_change_fd, EPOLLIN, manager_dispatch_time_change_fd, m);
        if (r < 0)
                return log_error_errno(r, "Failed to create time change event source: %m");


        r = sd_event_source_set_priority(m->time_change_event_source, SD_EVENT_PRIORITY_NORMAL-1);
        if (r < 0)
                return log_error_errno(r, "Failed to set priority of time change event sources: %m");

        (void) sd_event_source_set_description(m->time_change_event_source, "manager-time-change");

        log_debug("Set up TFD_TIMER_CANCEL_ON_SET timerfd.");

        return 0;
}
