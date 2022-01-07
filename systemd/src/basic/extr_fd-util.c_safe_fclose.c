
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EBADF ;
 int PROTECT_ERRNO ;
 int assert_se (int) ;
 int fclose_nointr (int *) ;

FILE* safe_fclose(FILE *f) {



        if (f) {
                PROTECT_ERRNO;

                assert_se(fclose_nointr(f) != -EBADF);
        }

        return ((void*)0);
}
