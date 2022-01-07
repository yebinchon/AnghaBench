
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FromLocaleDup (char const*) ;
 char* dlerror () ;

char *vlc_dlerror(void)
{
    const char *errmsg = dlerror();
    return (errmsg != ((void*)0)) ? FromLocaleDup(errmsg) : ((void*)0);
}
