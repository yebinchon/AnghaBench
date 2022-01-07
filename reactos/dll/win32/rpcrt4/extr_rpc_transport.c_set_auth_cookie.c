
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uc ;
typedef char WCHAR ;
struct TYPE_6__ {int dwStructSize; char* lpszScheme; scalar_t__ dwExtraInfoLength; int * lpszExtraInfo; scalar_t__ dwUrlPathLength; int * lpszUrlPath; scalar_t__ dwPasswordLength; int * lpszPassword; scalar_t__ dwUserNameLength; int * lpszUserName; scalar_t__ nPort; scalar_t__ dwHostNameLength; int lpszHostName; scalar_t__ dwSchemeLength; } ;
typedef TYPE_1__ URL_COMPONENTSW ;
struct TYPE_7__ {int servername; } ;
typedef TYPE_2__ RpcConnection_http ;
typedef int RPC_STATUS ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int InternetCreateUrlW (TYPE_1__*,int ,char*,int*) ;
 int InternetSetCookieW (char*,int *,char const*) ;
 int RPC_S_OK ;
 int RPC_S_OUT_OF_MEMORY ;
 int RPC_S_SERVER_UNAVAILABLE ;
 scalar_t__ is_secure (TYPE_2__*) ;

__attribute__((used)) static RPC_STATUS set_auth_cookie(RpcConnection_http *httpc, const WCHAR *value)
{
    static WCHAR httpW[] = {'h','t','t','p',0};
    static WCHAR httpsW[] = {'h','t','t','p','s',0};
    URL_COMPONENTSW uc;
    DWORD len;
    WCHAR *url;
    BOOL ret;

    if (!value) return RPC_S_OK;

    uc.dwStructSize = sizeof(uc);
    uc.lpszScheme = is_secure(httpc) ? httpsW : httpW;
    uc.dwSchemeLength = 0;
    uc.lpszHostName = httpc->servername;
    uc.dwHostNameLength = 0;
    uc.nPort = 0;
    uc.lpszUserName = ((void*)0);
    uc.dwUserNameLength = 0;
    uc.lpszPassword = ((void*)0);
    uc.dwPasswordLength = 0;
    uc.lpszUrlPath = ((void*)0);
    uc.dwUrlPathLength = 0;
    uc.lpszExtraInfo = ((void*)0);
    uc.dwExtraInfoLength = 0;

    if (!InternetCreateUrlW(&uc, 0, ((void*)0), &len) && (GetLastError() != ERROR_INSUFFICIENT_BUFFER))
        return RPC_S_SERVER_UNAVAILABLE;

    if (!(url = HeapAlloc(GetProcessHeap(), 0, len))) return RPC_S_OUT_OF_MEMORY;

    len = len / sizeof(WCHAR) - 1;
    if (!InternetCreateUrlW(&uc, 0, url, &len))
    {
        HeapFree(GetProcessHeap(), 0, url);
        return RPC_S_SERVER_UNAVAILABLE;
    }

    ret = InternetSetCookieW(url, ((void*)0), value);
    HeapFree(GetProcessHeap(), 0, url);
    if (!ret) return RPC_S_SERVER_UNAVAILABLE;

    return RPC_S_OK;
}
