
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FSETLOCKING_BYCALLER ;
 int __fsetlocking (int *,int ) ;
 int * fmemopen (void*,size_t,char const*) ;

FILE* fmemopen_unlocked(void *buf, size_t size, const char *mode) {
        FILE *f = fmemopen(buf, size, mode);
        if (!f)
                return ((void*)0);

        (void) __fsetlocking(f, FSETLOCKING_BYCALLER);

        return f;
}
