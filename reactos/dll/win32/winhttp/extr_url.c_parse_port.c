
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int INTERNET_PORT ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int ERROR_WINHTTP_INVALID_URL ;
 scalar_t__ isdigitW (int const) ;

__attribute__((used)) static DWORD parse_port( const WCHAR *str, DWORD len, INTERNET_PORT *ret )
{
    const WCHAR *p = str;
    DWORD port = 0;
    while (len && isdigitW( *p ))
    {
        if ((port = port * 10 + *p - '0') > 65535) return ERROR_WINHTTP_INVALID_URL;
        p++; len--;
    }
    *ret = port;
    return ERROR_SUCCESS;
}
