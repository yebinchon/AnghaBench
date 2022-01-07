
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 scalar_t__ EBADF ;
 int PROTECT_ERRNO ;
 int assert_se (int) ;
 scalar_t__ closedir (int *) ;
 scalar_t__ errno ;

DIR* safe_closedir(DIR *d) {

        if (d) {
                PROTECT_ERRNO;

                assert_se(closedir(d) >= 0 || errno != EBADF);
        }

        return ((void*)0);
}
