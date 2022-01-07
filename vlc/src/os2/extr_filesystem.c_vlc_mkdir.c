
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int ENOENT ;
 char* ToLocaleDup (char const*) ;
 int errno ;
 int free (char*) ;
 int mkdir (char*,int ) ;
 scalar_t__ unlikely (int ) ;

int vlc_mkdir (const char *dirname, mode_t mode)
{
    char *locname = ToLocaleDup (dirname);
    if (unlikely(locname == ((void*)0)))
    {
        errno = ENOENT;
        return -1;
    }

    int res = mkdir (locname, mode);
    free (locname);
    return res;
}
