
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GET_SEALS ;
 int F_SEAL_GROW ;
 int F_SEAL_SEAL ;
 int F_SEAL_SHRINK ;
 int F_SEAL_WRITE ;
 int assert (int) ;
 int errno ;
 int fcntl (int,int ) ;

int memfd_get_sealed(int fd) {
        int r;

        assert(fd >= 0);

        r = fcntl(fd, F_GET_SEALS);
        if (r < 0)
                return -errno;

        return r == (F_SEAL_SHRINK | F_SEAL_GROW | F_SEAL_WRITE | F_SEAL_SEAL);
}
