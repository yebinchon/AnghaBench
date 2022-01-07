
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DECIMAL_STR_MAX (int) ;
 scalar_t__ STRLEN (char*) ;
 int access (char*,int) ;
 int errno ;
 int xsprintf (char*,char*,int) ;

int access_fd(int fd, int mode) {
        char p[STRLEN("/proc/self/fd/") + DECIMAL_STR_MAX(fd) + 1];
        int r;



        xsprintf(p, "/proc/self/fd/%i", fd);
        r = access(p, mode);
        if (r < 0)
                return -errno;

        return r;
}
