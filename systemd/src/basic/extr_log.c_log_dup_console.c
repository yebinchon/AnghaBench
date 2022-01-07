
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_DUPFD_CLOEXEC ;
 int console_fd ;
 int errno ;
 int fcntl (int,int ,int) ;

int log_dup_console(void) {
        int copy;




        if (console_fd >= 3)
                return 0;

        copy = fcntl(console_fd, F_DUPFD_CLOEXEC, 3);
        if (copy < 0)
                return -errno;

        console_fd = copy;
        return 0;
}
