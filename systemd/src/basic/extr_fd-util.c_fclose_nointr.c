
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EINTR ;
 int assert (int *) ;
 int errno ;
 scalar_t__ fclose (int *) ;

int fclose_nointr(FILE *f) {
        assert(f);



        if (fclose(f) == 0)
                return 0;

        if (errno == EINTR)
                return 0;

        return -errno;
}
