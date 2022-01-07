
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpszProxyBypass; int * lpszProxy; } ;
typedef TYPE_1__ WINHTTP_PROXY_INFO ;
typedef int BOOL ;


 int ERROR_SUCCESS ;
 int FALSE ;
 int GetLastError () ;
 int GlobalFree (int *) ;
 int SetLastError (int) ;
 scalar_t__ WinHttpGetDefaultProxyConfiguration (TYPE_1__*) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static BOOL proxy_active(void)
{
    WINHTTP_PROXY_INFO proxy_info;
    BOOL active = FALSE;

    SetLastError(0xdeadbeef);
    if (WinHttpGetDefaultProxyConfiguration(&proxy_info))
    {
        ok(GetLastError() == ERROR_SUCCESS || broken(GetLastError() == 0xdeadbeef) ,
           "got %u\n", GetLastError());
        active = (proxy_info.lpszProxy != ((void*)0));
        if (active)
            GlobalFree(proxy_info.lpszProxy);
        if (proxy_info.lpszProxyBypass != ((void*)0))
            GlobalFree(proxy_info.lpszProxyBypass);
    }
    else
       active = FALSE;

    return active;
}
