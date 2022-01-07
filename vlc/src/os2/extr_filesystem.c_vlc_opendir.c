
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int ENOENT ;
 char* ToLocaleDup (char const*) ;
 int errno ;
 int free (char const*) ;
 int * opendir (char const*) ;
 scalar_t__ unlikely (int ) ;

DIR *vlc_opendir (const char *dirname)
{
    const char *locname = ToLocaleDup (dirname);
    if (unlikely(locname == ((void*)0)))
    {
        errno = ENOENT;
        return ((void*)0);
    }

    DIR *dir = opendir (locname);

    free (locname);

    return dir;
}
