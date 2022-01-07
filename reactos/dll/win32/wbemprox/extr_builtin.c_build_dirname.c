
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;


 char* heap_alloc (int) ;
 int isalphaW (char const) ;
 int strlenW (char const*) ;

__attribute__((used)) static WCHAR *build_dirname( const WCHAR *path, UINT *ret_len )
{
    const WCHAR *p = path, *start;
    UINT len, i;
    WCHAR *ret;

    if (!isalphaW( p[0] ) || p[1] != ':' || p[2] != '\\' || p[3] != '\\' || !p[4]) return ((void*)0);
    start = path + 4;
    len = strlenW( start );
    p = start + len - 1;
    if (*p == '\\') return ((void*)0);

    while (p >= start && *p != '\\') { len--; p--; };
    while (p >= start && *p == '\\') { len--; p--; };

    if (!(ret = heap_alloc( (len + 1) * sizeof(WCHAR) ))) return ((void*)0);
    for (i = 0, p = start; p < start + len; p++)
    {
        if (p[0] == '\\' && p[1] == '\\')
        {
            ret[i++] = '\\';
            p++;
        }
        else ret[i++] = *p;
    }
    ret[i] = 0;
    *ret_len = i;
    return ret;
}
