
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FSETLOCKING_BYCALLER ;
 int __fsetlocking (int *,int ) ;
 int assert (int **) ;
 int errno ;
 int * fopen (char const*,char const*) ;

int fopen_unlocked(const char *path, const char *options, FILE **ret) {
        assert(ret);

        FILE *f = fopen(path, options);
        if (!f)
                return -errno;

        (void) __fsetlocking(f, FSETLOCKING_BYCALLER);

        *ret = f;
        return 0;
}
