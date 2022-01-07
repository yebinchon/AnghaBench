
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ EACCES ;
 scalar_t__ EEXIST ;
 scalar_t__ _wremove (int *) ;
 scalar_t__ _wrename (int *,int *) ;
 scalar_t__ errno ;
 int free (int *) ;
 int * widen_path (char const*) ;

int vlc_rename (const char *oldpath, const char *newpath)
{
    int ret = -1;

    wchar_t *wold = widen_path (oldpath), *wnew = widen_path (newpath);
    if (wold == ((void*)0) || wnew == ((void*)0))
        goto out;

    if (_wrename (wold, wnew) && (errno == EACCES || errno == EEXIST))
    {
        if (_wremove (wnew))
        {
            errno = EACCES;
            goto out;
        }
        if (_wrename (wold, wnew))
            goto out;
    }
    ret = 0;
out:
    free (wnew);
    free (wold);
    return ret;
}
