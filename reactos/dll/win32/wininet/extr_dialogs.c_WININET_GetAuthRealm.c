
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPWSTR ;
typedef int HINTERNET ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int ERR (char*,int ) ;
 scalar_t__ FALSE ;
 scalar_t__ HTTP_QUERY_PROXY_AUTHENTICATE ;
 scalar_t__ HTTP_QUERY_WWW_AUTHENTICATE ;
 int HttpQueryInfoW (int ,scalar_t__,char*,scalar_t__*,scalar_t__*) ;
 scalar_t__ TRUE ;
 int debugstr_w (char*) ;
 char* strchrW (char*,char) ;
 int strcpyW (char*,char*) ;
 int strlenW (char const*) ;
 scalar_t__ strncmpW (char*,char const*,int ) ;
 char* strrchrW (char*,char) ;

__attribute__((used)) static BOOL WININET_GetAuthRealm( HINTERNET hRequest, LPWSTR szBuf, DWORD sz, BOOL proxy )
{
    LPWSTR p, q;
    DWORD index, query;
    static const WCHAR szRealm[] = { 'r','e','a','l','m','=',0 };

    if (proxy)
        query = HTTP_QUERY_PROXY_AUTHENTICATE;
    else
        query = HTTP_QUERY_WWW_AUTHENTICATE;


    index = 0;
    if( !HttpQueryInfoW( hRequest, query, szBuf, &sz, &index) )
        return FALSE;





    p = strchrW( szBuf, ' ' );
    if( !p || strncmpW( p+1, szRealm, strlenW(szRealm) ) )
    {
        ERR("response wrong? (%s)\n", debugstr_w(szBuf));
        return FALSE;
    }


    p += 7;
    if( *p == '"' )
    {
        p++;
        q = strrchrW( p, '"' );
        if( q )
            *q = 0;
    }
    strcpyW( szBuf, p );

    return TRUE;
}
