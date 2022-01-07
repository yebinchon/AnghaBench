
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FSETLOCKING_BYCALLER ;
 int __fsetlocking (int *,int ) ;
 int * open_memstream (char**,size_t*) ;

FILE* open_memstream_unlocked(char **ptr, size_t *sizeloc) {
        FILE *f = open_memstream(ptr, sizeloc);
        if (!f)
                return ((void*)0);

        (void) __fsetlocking(f, FSETLOCKING_BYCALLER);

        return f;
}
