
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dlerror () ;
 char* strdup (char const*) ;

char *vlc_dlerror(void)
{
    const char *errmsg = dlerror();

    return (errmsg != ((void*)0)) ? strdup(errmsg) : ((void*)0);
}
