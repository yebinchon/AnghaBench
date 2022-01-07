
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct timespec {int dummy; } ;
struct stat {struct timespec st_mtim; struct timespec st_atim; } ;
typedef int CopyFlags ;


 int COPY_CRTIME ;
 scalar_t__ FLAGS_SET (int ,int ) ;
 int assert (int) ;
 int errno ;
 scalar_t__ fd_getcrtime (int,int *) ;
 int fd_setcrtime (int,int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ futimens (int,struct timespec*) ;

int copy_times(int fdf, int fdt, CopyFlags flags) {
        struct timespec ut[2];
        struct stat st;

        assert(fdf >= 0);
        assert(fdt >= 0);

        if (fstat(fdf, &st) < 0)
                return -errno;

        ut[0] = st.st_atim;
        ut[1] = st.st_mtim;

        if (futimens(fdt, ut) < 0)
                return -errno;

        if (FLAGS_SET(flags, COPY_CRTIME)) {
                usec_t crtime;

                if (fd_getcrtime(fdf, &crtime) >= 0)
                        (void) fd_setcrtime(fdt, crtime);
        }

        return 0;
}
