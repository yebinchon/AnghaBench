
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* user_lookup_fds; int user_lookup_event_source; int event; } ;
typedef TYPE_1__ Manager ;


 int AF_UNIX ;
 int EPOLLIN ;
 int NOTIFY_RCVBUF_SIZE ;
 scalar_t__ SD_EVENT_PRIORITY_NORMAL ;
 int SOCK_CLOEXEC ;
 int SOCK_DGRAM ;
 int assert (TYPE_1__*) ;
 int errno ;
 int fd_inc_rcvbuf (scalar_t__,int ) ;
 int log_error_errno (int ,char*) ;
 int manager_dispatch_user_lookup_fd ;
 int safe_close_pair (scalar_t__*) ;
 int sd_event_add_io (int ,int *,scalar_t__,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_description (int ,char*) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;
 int sd_event_source_unref (int ) ;
 scalar_t__ socketpair (int ,int,int ,scalar_t__*) ;

__attribute__((used)) static int manager_setup_user_lookup_fd(Manager *m) {
        int r;

        assert(m);
        if (m->user_lookup_fds[0] < 0) {


                safe_close_pair(m->user_lookup_fds);
                m->user_lookup_event_source = sd_event_source_unref(m->user_lookup_event_source);

                if (socketpair(AF_UNIX, SOCK_DGRAM|SOCK_CLOEXEC, 0, m->user_lookup_fds) < 0)
                        return log_error_errno(errno, "Failed to allocate user lookup socket: %m");

                (void) fd_inc_rcvbuf(m->user_lookup_fds[0], NOTIFY_RCVBUF_SIZE);
        }

        if (!m->user_lookup_event_source) {
                r = sd_event_add_io(m->event, &m->user_lookup_event_source, m->user_lookup_fds[0], EPOLLIN, manager_dispatch_user_lookup_fd, m);
                if (r < 0)
                        return log_error_errno(errno, "Failed to allocate user lookup event source: %m");



                r = sd_event_source_set_priority(m->user_lookup_event_source, SD_EVENT_PRIORITY_NORMAL-11);
                if (r < 0)
                        return log_error_errno(errno, "Failed to set priority of user lookup event source: %m");

                (void) sd_event_source_set_description(m->user_lookup_event_source, "user-lookup");
        }

        return 0;
}
