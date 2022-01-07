
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ toupperW (char const) ;

__attribute__((used)) static BOOL eval_like( const WCHAR *lstr, const WCHAR *rstr )
{
    const WCHAR *p = lstr, *q = rstr;

    while (*p && *q)
    {
        if (*q == '%')
        {
            while (*q == '%') q++;
            if (!*q) return TRUE;
            while (*p && *q && toupperW( *p ) == toupperW( *q )) { p++; q++; };
            if (!*p && !*q) return TRUE;
        }
        if (*q != '%' && toupperW( *p++ ) != toupperW( *q++ )) return FALSE;
    }
    return TRUE;
}
