
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef scalar_t__ const* LPCWSTR ;
typedef int DWORD ;


 int copy_escape (scalar_t__*,scalar_t__ const*,int) ;
 scalar_t__* heap_alloc (int) ;
 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 scalar_t__ need_escape (scalar_t__ const) ;
 int strcpyW (scalar_t__*,scalar_t__ const*) ;
 scalar_t__* strrchrW (scalar_t__ const*,char) ;

__attribute__((used)) static WCHAR *escape_url( LPCWSTR url, DWORD *len )
{
    WCHAR *ret;
    const WCHAR *p, *q;

    if ((p = q = strrchrW( url, '/' )))
    {
        while (*q)
        {
            if (need_escape( *q )) *len += 2;
            q++;
        }
    }
    if (!(ret = heap_alloc( (*len + 1) * sizeof(WCHAR) ))) return ((void*)0);
    if (!p) strcpyW( ret, url );
    else
    {
        memcpy( ret, url, (p - url) * sizeof(WCHAR) );
        copy_escape( ret + (p - url), p, q - p );
    }
    return ret;
}
