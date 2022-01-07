
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HINTERNET ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int HTTP_QUERY_WWW_AUTHENTICATE ;
 int HttpQueryInfoW (int ,int ,int *,scalar_t__*,scalar_t__*) ;
 int TRUE ;
 scalar_t__ auth_scheme_from_header (int *) ;

__attribute__((used)) static BOOL get_authvalue(HINTERNET request, DWORD scheme, WCHAR *buffer, DWORD buflen)
{
    DWORD len, index = 0;
    for (;;)
    {
        len = buflen;
        if (!HttpQueryInfoW(request, HTTP_QUERY_WWW_AUTHENTICATE, buffer, &len, &index)) return FALSE;
        if (auth_scheme_from_header(buffer) == scheme) break;
    }
    return TRUE;
}
