
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
typedef int uint64_t ;
typedef int le64_t ;
typedef int le ;


 int CLOCK_REALTIME ;
 scalar_t__ IN_SET (scalar_t__,int ,int ) ;
 int USEC_INFINITY ;
 int assert (int) ;
 int errno ;
 scalar_t__ fsetxattr (int,char*,int *,int,int ) ;
 int htole64 (int ) ;
 scalar_t__ now (int ) ;

int fd_setcrtime(int fd, usec_t usec) {
        le64_t le;

        assert(fd >= 0);

        if (IN_SET(usec, 0, USEC_INFINITY))
                usec = now(CLOCK_REALTIME);

        le = htole64((uint64_t) usec);
        if (fsetxattr(fd, "user.crtime_usec", &le, sizeof(le), 0) < 0)
                return -errno;

        return 0;
}
