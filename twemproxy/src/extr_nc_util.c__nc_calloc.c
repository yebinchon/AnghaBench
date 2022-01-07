
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* _nc_zalloc (size_t,char const*,int) ;

void *
_nc_calloc(size_t nmemb, size_t size, const char *name, int line)
{
    return _nc_zalloc(nmemb * size, name, line);
}
