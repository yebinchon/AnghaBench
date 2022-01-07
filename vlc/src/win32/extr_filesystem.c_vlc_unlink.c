
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int _wunlink (int *) ;
 int free (int *) ;
 int * widen_path (char const*) ;

int vlc_unlink (const char *filename)
{
    wchar_t *wpath = widen_path (filename);
    if (wpath == ((void*)0))
        return -1;

    int ret = _wunlink (wpath);
    free (wpath);
    return ret;
}
