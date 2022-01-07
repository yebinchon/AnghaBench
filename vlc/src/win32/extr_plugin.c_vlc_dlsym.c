
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetProcAddress (void*,char const*) ;

void *vlc_dlsym(void *handle, const char *psz_function)
{
    return (void *)GetProcAddress(handle, psz_function);
}
