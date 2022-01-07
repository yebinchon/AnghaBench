
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int assert (int *) ;
 int errno ;
 int fflush_and_check (int *) ;
 int fileno (int *) ;
 scalar_t__ fsync (int ) ;
 int fsync_directory_of_file (int ) ;

int fflush_sync_and_check(FILE *f) {
        int r;

        assert(f);

        r = fflush_and_check(f);
        if (r < 0)
                return r;

        if (fsync(fileno(f)) < 0)
                return -errno;

        r = fsync_directory_of_file(fileno(f));
        if (r < 0)
                return r;

        return 0;
}
