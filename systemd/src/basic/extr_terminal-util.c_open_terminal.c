
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EIO ;
 int ENOTTY ;
 int O_CREAT ;
 int USEC_PER_MSEC ;
 int errno ;
 scalar_t__ isatty (int) ;
 int open (char const*,int,int ) ;
 int safe_close (int) ;
 int usleep (int) ;

int open_terminal(const char *name, int mode) {
        unsigned c = 0;
        int fd;
        if (mode & O_CREAT)
                return -EINVAL;

        for (;;) {
                fd = open(name, mode, 0);
                if (fd >= 0)
                        break;

                if (errno != EIO)
                        return -errno;


                if (c >= 20)
                        return -errno;

                usleep(50 * USEC_PER_MSEC);
                c++;
        }

        if (isatty(fd) <= 0) {
                safe_close(fd);
                return -ENOTTY;
        }

        return fd;
}
