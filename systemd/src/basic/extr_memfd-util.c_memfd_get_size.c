
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct stat {int st_size; } ;


 int assert (int) ;
 int errno ;
 int fstat (int,struct stat*) ;

int memfd_get_size(int fd, uint64_t *sz) {
        struct stat stat;
        int r;

        assert(fd >= 0);
        assert(sz);

        r = fstat(fd, &stat);
        if (r < 0)
                return -errno;

        *sz = stat.st_size;
        return 0;
}
