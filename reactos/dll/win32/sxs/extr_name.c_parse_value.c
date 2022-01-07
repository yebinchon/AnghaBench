
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,unsigned int) ;
 int memcpy (char*,char const*,unsigned int) ;

__attribute__((used)) static WCHAR *parse_value( const WCHAR *str, unsigned int *len )
{
    WCHAR *ret;
    const WCHAR *p = str;

    if (*p++ != '\"') return ((void*)0);
    while (*p && *p != '\"') p++;
    if (!*p) return ((void*)0);

    *len = p - str;
    if (!(ret = HeapAlloc( GetProcessHeap(), 0, *len * sizeof(WCHAR) ))) return ((void*)0);
    memcpy( ret, str + 1, (*len - 1) * sizeof(WCHAR) );
    ret[*len - 1] = 0;
    return ret;
}
