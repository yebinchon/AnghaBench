
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ LPWSTR ;
typedef char const* LPCWSTR ;
typedef int DWORD ;


 scalar_t__ parser_alloc (void*,int) ;
 int strcatW (scalar_t__,char const*) ;
 int strcpyW (scalar_t__,char const*) ;
 int strlenW (char const*) ;

__attribute__((used)) static LPWSTR parser_add_table( void *info, LPCWSTR list, LPCWSTR table )
{
    static const WCHAR space[] = {' ',0};
    DWORD len = strlenW( list ) + strlenW( table ) + 2;
    LPWSTR ret;

    ret = parser_alloc( info, len * sizeof(WCHAR) );
    if( ret )
    {
        strcpyW( ret, list );
        strcatW( ret, space );
        strcatW( ret, table );
    }
    return ret;
}
