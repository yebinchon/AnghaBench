
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct stat {int dummy; } ;
struct _stati64 {int dummy; } ;


 int _wstati64 (int *,struct stat*) ;
 int free (int *) ;
 int static_assert (int,char*) ;
 int * widen_path (char const*) ;

int vlc_stat (const char *filename, struct stat *buf)
{
    wchar_t *wpath = widen_path (filename);
    if (wpath == ((void*)0))
        return -1;

    static_assert (sizeof (*buf) == sizeof (struct _stati64),
                   "Mismatched struct stat definition.");

    int ret = _wstati64 (wpath, buf);
    free (wpath);
    return ret;
}
