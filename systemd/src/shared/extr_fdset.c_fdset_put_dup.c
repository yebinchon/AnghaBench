
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDSet ;


 int F_DUPFD_CLOEXEC ;
 int assert (int) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int fdset_put (int *,int) ;
 int safe_close (int) ;

int fdset_put_dup(FDSet *s, int fd) {
        int copy, r;

        assert(s);
        assert(fd >= 0);

        copy = fcntl(fd, F_DUPFD_CLOEXEC, 3);
        if (copy < 0)
                return -errno;

        r = fdset_put(s, copy);
        if (r < 0) {
                safe_close(copy);
                return r;
        }

        return copy;
}
