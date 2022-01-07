
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPCWSTR ;
typedef int DWORD ;


 char* heap_alloc (int) ;
 scalar_t__ isxdigitW (char const) ;
 int strtolW (char*,int *,int) ;

__attribute__((used)) static WCHAR *decode_url( LPCWSTR url, DWORD *len )
{
    const WCHAR *p = url;
    WCHAR hex[3], *q, *ret;

    if (!(ret = heap_alloc( *len * sizeof(WCHAR) ))) return ((void*)0);
    q = ret;
    while (*len > 0)
    {
        if (p[0] == '%' && isxdigitW( p[1] ) && isxdigitW( p[2] ))
        {
            hex[0] = p[1];
            hex[1] = p[2];
            hex[2] = 0;
            *q++ = strtolW( hex, ((void*)0), 16 );
            p += 3;
            *len -= 3;
        }
        else
        {
            *q++ = *p++;
            *len -= 1;
        }
    }
    *len = q - ret;
    return ret;
}
