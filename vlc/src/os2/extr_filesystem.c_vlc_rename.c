
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 char* ToLocaleDup (char const*) ;
 int errno ;
 int free (char const*) ;
 int rename (char const*,char const*) ;

int vlc_rename (const char *oldpath, const char *newpath)
{
    const char *lo = ToLocaleDup (oldpath);
    if (lo == ((void*)0))
        goto error;

    const char *ln = ToLocaleDup (newpath);
    if (ln == ((void*)0))
    {
        free (lo);
error:
        errno = ENOENT;
        return -1;
    }

    int ret = rename (lo, ln);
    free (lo);
    free (ln);
    return ret;
}
