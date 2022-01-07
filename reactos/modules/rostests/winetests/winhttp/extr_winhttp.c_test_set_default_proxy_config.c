
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwAccessType; int* lpszProxy; int* lpszProxyBypass; } ;
typedef TYPE_1__ WINHTTP_PROXY_INFO ;
typedef int WCHAR ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ERROR_ACCESS_DENIED ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int SetLastError (int) ;
 int WINHTTP_ACCESS_TYPE_NAMED_PROXY ;
 int WinHttpSetDefaultProxyConfiguration (TYPE_1__*) ;
 scalar_t__ broken (int) ;
 scalar_t__ get_default_proxy_reg_value (int *,scalar_t__,scalar_t__*) ;
 int ok (int,char*,int) ;
 int set_default_proxy_reg_value (int *,scalar_t__,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static void test_set_default_proxy_config(void)
{
    static WCHAR wideString[] = { 0x226f, 0x575b, 0 };
    static WCHAR normalString[] = { 'f','o','o',0 };
    DWORD type, len;
    BYTE *saved_proxy_settings = ((void*)0);
    WINHTTP_PROXY_INFO info;
    BOOL ret;
    len = get_default_proxy_reg_value( ((void*)0), 0, &type );
    if (len)
    {
        saved_proxy_settings = HeapAlloc( GetProcessHeap(), 0, len );
        len = get_default_proxy_reg_value( saved_proxy_settings, len, &type );
    }

    if (0)
    {

        SetLastError(0xdeadbeef);
        ret = WinHttpSetDefaultProxyConfiguration(((void*)0));
        ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
            "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    }


    info.dwAccessType = 0xdeadbeef;
    info.lpszProxy = info.lpszProxyBypass = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = WinHttpSetDefaultProxyConfiguration(&info);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
        "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());


    info.dwAccessType = WINHTTP_ACCESS_TYPE_NAMED_PROXY;
    info.lpszProxy = info.lpszProxyBypass = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = WinHttpSetDefaultProxyConfiguration(&info);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
        "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    info.lpszProxyBypass = normalString;
    SetLastError(0xdeadbeef);
    ret = WinHttpSetDefaultProxyConfiguration(&info);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
        "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());


    info.lpszProxy = wideString;
    SetLastError(0xdeadbeef);
    ret = WinHttpSetDefaultProxyConfiguration(&info);
    if (!ret && GetLastError() == ERROR_ACCESS_DENIED)
        skip("couldn't set default proxy configuration: access denied\n");
    else
        ok((!ret && GetLastError() == ERROR_INVALID_PARAMETER) ||
           broken(ret),
           "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    info.lpszProxy = normalString;
    SetLastError(0xdeadbeef);
    ret = WinHttpSetDefaultProxyConfiguration(&info);
    if (!ret && GetLastError() == ERROR_ACCESS_DENIED)
        skip("couldn't set default proxy configuration: access denied\n");
    else
    {
        ok(ret, "WinHttpSetDefaultProxyConfiguration failed: %u\n", GetLastError());
        ok(GetLastError() == ERROR_SUCCESS || broken(GetLastError() == 0xdeadbeef) ,
           "got %u\n", GetLastError());
    }
    set_default_proxy_reg_value( saved_proxy_settings, len, type );
}
