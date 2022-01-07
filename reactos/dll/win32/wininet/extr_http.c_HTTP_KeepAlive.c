
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szVersion ;
typedef int szConnectionResponse ;
typedef int http_request_t ;
typedef int WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ HTTP_HttpQueryInfoW (int *,int ,int *,int*,int *) ;
 int HTTP_QUERY_CONNECTION ;
 int HTTP_QUERY_PROXY_CONNECTION ;
 int HTTP_QUERY_VERSION ;
 int TRUE ;
 int g_szHttp1_1 ;
 int strcmpiW (int *,int ) ;
 int szKeepAlive ;

__attribute__((used)) static BOOL HTTP_KeepAlive(http_request_t *request)
{
    WCHAR szVersion[10];
    WCHAR szConnectionResponse[20];
    DWORD dwBufferSize = sizeof(szVersion);
    BOOL keepalive = FALSE;



    if (HTTP_HttpQueryInfoW(request, HTTP_QUERY_VERSION, szVersion, &dwBufferSize, ((void*)0)) == ERROR_SUCCESS
        && !strcmpiW(szVersion, g_szHttp1_1))
    {
        keepalive = TRUE;
    }

    dwBufferSize = sizeof(szConnectionResponse);
    if (HTTP_HttpQueryInfoW(request, HTTP_QUERY_PROXY_CONNECTION, szConnectionResponse, &dwBufferSize, ((void*)0)) == ERROR_SUCCESS
        || HTTP_HttpQueryInfoW(request, HTTP_QUERY_CONNECTION, szConnectionResponse, &dwBufferSize, ((void*)0)) == ERROR_SUCCESS)
    {
        keepalive = !strcmpiW(szConnectionResponse, szKeepAlive);
    }

    return keepalive;
}
