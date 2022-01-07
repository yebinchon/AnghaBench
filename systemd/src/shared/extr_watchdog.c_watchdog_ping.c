
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDIOC_KEEPALIVE ;
 int errno ;
 int ioctl (scalar_t__,int ,int ) ;
 int log_warning_errno (int ,char*) ;
 int open_watchdog () ;
 scalar_t__ watchdog_fd ;

int watchdog_ping(void) {
        int r;

        if (watchdog_fd < 0) {
                r = open_watchdog();
                if (r < 0)
                        return r;
        }

        r = ioctl(watchdog_fd, WDIOC_KEEPALIVE, 0);
        if (r < 0)
                return log_warning_errno(errno, "Failed to ping hardware watchdog: %m");

        return 0;
}
