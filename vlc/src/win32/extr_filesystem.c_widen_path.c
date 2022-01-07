
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ ENOENT ;
 int * ToWide (char const*) ;
 scalar_t__ errno ;

__attribute__((used)) static wchar_t *widen_path (const char *path)
{
    wchar_t *wpath;

    errno = 0;
    wpath = ToWide (path);
    if (wpath == ((void*)0))
    {
        if (errno == 0)
            errno = ENOENT;
        return ((void*)0);
    }
    return wpath;
}
