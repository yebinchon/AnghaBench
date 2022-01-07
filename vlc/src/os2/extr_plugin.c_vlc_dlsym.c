
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* dlsym (void*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

void *vlc_dlsym(void *handle, const char *psz_function)
{
    char buf[strlen(psz_function) + 2];
    buf[0] = '_';
    strcpy(buf + 1, psz_function);
    return dlsym( handle, buf );
}
