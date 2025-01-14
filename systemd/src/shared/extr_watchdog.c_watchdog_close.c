
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int WDIOC_SETOPTIONS ;
 int WDIOS_DISABLECARD ;
 scalar_t__ errno ;
 int ioctl (scalar_t__,int ,int*) ;
 int log_error_errno (scalar_t__,char*) ;
 int log_warning_errno (scalar_t__,char*) ;
 scalar_t__ safe_close (scalar_t__) ;
 scalar_t__ watchdog_fd ;
 scalar_t__ write (scalar_t__,char const*,int) ;

void watchdog_close(bool disarm) {
        int r;

        if (watchdog_fd < 0)
                return;

        if (disarm) {
                int flags;


                flags = WDIOS_DISABLECARD;
                r = ioctl(watchdog_fd, WDIOC_SETOPTIONS, &flags);
                if (r < 0)
                        log_warning_errno(errno, "Failed to disable hardware watchdog: %m");


                for (;;) {
                        static const char v = 'V';

                        if (write(watchdog_fd, &v, 1) > 0)
                                break;

                        if (errno != EINTR) {
                                log_error_errno(errno, "Failed to disarm watchdog timer: %m");
                                break;
                        }
                }
        }

        watchdog_fd = safe_close(watchdog_fd);
}
