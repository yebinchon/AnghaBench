
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EIO ;
 int assert (int *) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;

int fflush_and_check(FILE *f) {
        assert(f);

        errno = 0;
        fflush(f);

        if (ferror(f))
                return errno_or_else(EIO);

        return 0;
}
