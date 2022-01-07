
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef scalar_t__* BSTR ;


 int SysFreeString (scalar_t__*) ;
 scalar_t__* a2bstr (char const*) ;

__attribute__((used)) static const WCHAR *strstr_wa(const WCHAR *str, const char *suba)
{
    BSTR sub;
    const WCHAR *ret = ((void*)0);
    sub = a2bstr(suba);
    while (*str)
    {
        const WCHAR *p1 = str, *p2 = sub;
        while (*p1 && *p2 && *p1 == *p2) { p1++; p2++; }
        if (!*p2) {ret = str; break;}
        str++;
    }
    SysFreeString(sub);
    return ret;
}
