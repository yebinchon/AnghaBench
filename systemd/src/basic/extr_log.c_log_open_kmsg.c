
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CLOEXEC ;
 int O_NOCTTY ;
 int O_WRONLY ;
 int errno ;
 scalar_t__ fd_move_above_stdio (scalar_t__) ;
 scalar_t__ kmsg_fd ;
 scalar_t__ open (char*,int) ;

__attribute__((used)) static int log_open_kmsg(void) {

        if (kmsg_fd >= 0)
                return 0;

        kmsg_fd = open("/dev/kmsg", O_WRONLY|O_NOCTTY|O_CLOEXEC);
        if (kmsg_fd < 0)
                return -errno;

        kmsg_fd = fd_move_above_stdio(kmsg_fd);
        return 0;
}
