
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* GetProcAddress (void*,char const*) ;

void *wine_dlsym( void *handle, const char *symbol, char *error, size_t errorsize )
{
    return GetProcAddress(handle, symbol);
}
