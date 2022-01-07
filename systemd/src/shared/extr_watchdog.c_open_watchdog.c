
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_info {int firmware_version; int identity; } ;


 int O_CLOEXEC ;
 int O_WRONLY ;
 int WDIOC_GETSUPPORT ;
 int errno ;
 scalar_t__ ioctl (scalar_t__,int ,struct watchdog_info*) ;
 int log_info (char*,int ,int ) ;
 scalar_t__ open (char*,int) ;
 int update_timeout () ;
 scalar_t__ watchdog_device ;
 scalar_t__ watchdog_fd ;

__attribute__((used)) static int open_watchdog(void) {
        struct watchdog_info ident;

        if (watchdog_fd >= 0)
                return 0;

        watchdog_fd = open(watchdog_device ?: "/dev/watchdog",
                           O_WRONLY|O_CLOEXEC);
        if (watchdog_fd < 0)
                return -errno;

        if (ioctl(watchdog_fd, WDIOC_GETSUPPORT, &ident) >= 0)
                log_info("Hardware watchdog '%s', version %x",
                         ident.identity,
                         ident.firmware_version);

        return update_timeout();
}
