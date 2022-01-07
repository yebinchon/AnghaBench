
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int * fdopen (int,char const*) ;
 int mkostemp_safe (char*) ;
 int safe_close (int) ;

int fmkostemp_safe(char *pattern, const char *mode, FILE **ret_f) {
        int fd;
        FILE *f;

        fd = mkostemp_safe(pattern);
        if (fd < 0)
                return fd;

        f = fdopen(fd, mode);
        if (!f) {
                safe_close(fd);
                return -errno;
        }

        *ret_f = f;
        return 0;
}
