
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* _nc_alloc (size_t,char const*,int) ;
 int memset (void*,int ,size_t) ;

void *
_nc_zalloc(size_t size, const char *name, int line)
{
    void *p;

    p = _nc_alloc(size, name, line);
    if (p != ((void*)0)) {
        memset(p, 0, size);
    }

    return p;
}
