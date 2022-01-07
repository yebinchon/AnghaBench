
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hostname_fd; int full_hostname; int mdns_hostname; int llmnr_hostname; int hostname_event_source; int event; } ;
typedef TYPE_1__ Manager ;


 int EPERM ;
 int O_CLOEXEC ;
 int O_NOCTTY ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int assert (TYPE_1__*) ;
 int determine_hostname (int *,int *,int *) ;
 int errno ;
 int fallback_hostname () ;
 int log_error_errno (int,char*) ;
 int log_info (char*,int ) ;
 int log_warning_errno (int ,char*) ;
 int make_fallback_hostnames (int *,int *,int *) ;
 int on_hostname_change ;
 scalar_t__ open (char*,int) ;
 scalar_t__ safe_close (scalar_t__) ;
 int sd_event_add_io (int ,int *,scalar_t__,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_description (int ,char*) ;

__attribute__((used)) static int manager_watch_hostname(Manager *m) {
        int r;

        assert(m);

        m->hostname_fd = open("/proc/sys/kernel/hostname",
                              O_RDONLY|O_CLOEXEC|O_NONBLOCK|O_NOCTTY);
        if (m->hostname_fd < 0) {
                log_warning_errno(errno, "Failed to watch hostname: %m");
                return 0;
        }

        r = sd_event_add_io(m->event, &m->hostname_event_source, m->hostname_fd, 0, on_hostname_change, m);
        if (r < 0) {
                if (r == -EPERM)

                        m->hostname_fd = safe_close(m->hostname_fd);
                else
                        return log_error_errno(r, "Failed to add hostname event source: %m");
        }

        (void) sd_event_source_set_description(m->hostname_event_source, "hostname");

        r = determine_hostname(&m->full_hostname, &m->llmnr_hostname, &m->mdns_hostname);
        if (r < 0) {
                log_info("Defaulting to hostname '%s'.", fallback_hostname());

                r = make_fallback_hostnames(&m->full_hostname, &m->llmnr_hostname, &m->mdns_hostname);
                if (r < 0)
                        return r;
        } else
                log_info("Using system hostname '%s'.", m->full_hostname);

        return 0;
}
