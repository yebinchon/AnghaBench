
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ssize_t ;
typedef int p ;


 int EIO ;
 int errno ;
 int write (int,int *,int) ;

__attribute__((used)) static int write_uint64(int fd, uint64_t p) {
        ssize_t k;

        k = write(fd, &p, sizeof(p));
        if (k < 0)
                return -errno;
        if (k != sizeof(p))
                return -EIO;

        return 0;
}
