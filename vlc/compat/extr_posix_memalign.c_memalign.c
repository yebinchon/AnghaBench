
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* malloc (size_t) ;

__attribute__((used)) static void *memalign(size_t align, size_t size)
{
    void *p = malloc(size);

    if ((uintptr_t)p & (align - 1)) {
        free(p);
        p = ((void*)0);
    }

    return p;
}
