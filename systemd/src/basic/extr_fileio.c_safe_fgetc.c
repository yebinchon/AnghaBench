
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EIO ;
 int EOF ;
 int assert (int *) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 scalar_t__ ferror (int *) ;
 int fgetc (int *) ;

int safe_fgetc(FILE *f, char *ret) {
        int k;

        assert(f);





        errno = 0;
        k = fgetc(f);
        if (k == EOF) {
                if (ferror(f))
                        return errno_or_else(EIO);

                if (ret)
                        *ret = 0;

                return 0;
        }

        if (ret)
                *ret = k;

        return 1;
}
