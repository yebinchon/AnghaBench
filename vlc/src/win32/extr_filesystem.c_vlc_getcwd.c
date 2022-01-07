
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 char* FromWide (int *) ;
 int * _wgetcwd (int *,int ) ;
 int free (int *) ;

char *vlc_getcwd (void)
{



    wchar_t *wdir = _wgetcwd (((void*)0), 0);
    if (wdir == ((void*)0))
        return ((void*)0);

    char *dir = FromWide (wdir);
    free (wdir);
    return dir;

}
