
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int MSIPACKAGE ;


 int deformat_string (int *,char*,char**) ;
 int lstrcpyW (char*,char*) ;
 size_t lstrlenW (char*) ;
 int msi_free (char*) ;
 char* strchrW (char*,char) ;
 size_t strlenW (char*) ;

__attribute__((used)) static void ACTION_ExpandAnyPath(MSIPACKAGE *package, WCHAR *src, WCHAR *dst,
 size_t len)
{
    WCHAR *ptr, *deformatted;

    if (!src || !dst || !len)
    {
        if (dst) *dst = '\0';
        return;
    }

    dst[0] = '\0';


    if ((ptr = strchrW(src, '|')))
        ptr++;
    else
        ptr = src;

    deformat_string(package, ptr, &deformatted);
    if (!deformatted || strlenW(deformatted) > len - 1)
    {
        msi_free(deformatted);
        return;
    }

    lstrcpyW(dst, deformatted);
    dst[lstrlenW(deformatted)] = '\0';
    msi_free(deformatted);
}
