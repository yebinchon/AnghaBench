
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IInternetZoneManager ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int ERROR_NOT_FOUND ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 scalar_t__ IInternetZoneManager_GetZoneActionPolicy (int *,int,scalar_t__,int *,int,int ) ;
 int IInternetZoneManager_Release (int *) ;
 scalar_t__ S_OK ;
 scalar_t__ URLACTION_CREDENTIALS_USE ;
 scalar_t__ URLPOLICY_CREDENTIALS_ANONYMOUS_ONLY ;
 scalar_t__ URLPOLICY_CREDENTIALS_CONDITIONAL_PROMPT ;
 scalar_t__ URLPOLICY_CREDENTIALS_MUST_PROMPT_USER ;
 scalar_t__ URLPOLICY_CREDENTIALS_SILENT_LOGON_OK ;
 int URLZONEREG_DEFAULT ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pCoInternetCreateZoneManager (int *,int **,int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_GetZoneActionPolicy(void)
{
    IInternetZoneManager *zonemgr = ((void*)0);
    BYTE buf[32];
    HRESULT hres;
    DWORD action = URLACTION_CREDENTIALS_USE;

    trace("testing GetZoneActionPolixy...\n");

    hres = pCoInternetCreateZoneManager(((void*)0), &zonemgr, 0);
    ok(hres == S_OK, "CoInternetCreateZoneManager failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IInternetZoneManager_GetZoneActionPolicy(zonemgr, 3, action, buf,
            sizeof(DWORD), URLZONEREG_DEFAULT);
    ok(hres == S_OK, "GetZoneActionPolicy failed: %08x\n", hres);
    ok(*(DWORD*)buf == URLPOLICY_CREDENTIALS_SILENT_LOGON_OK ||
            *(DWORD*)buf == URLPOLICY_CREDENTIALS_MUST_PROMPT_USER ||
            *(DWORD*)buf == URLPOLICY_CREDENTIALS_CONDITIONAL_PROMPT ||
            *(DWORD*)buf == URLPOLICY_CREDENTIALS_ANONYMOUS_ONLY,
            "unexpected policy=%d\n", *(DWORD*)buf);

    hres = IInternetZoneManager_GetZoneActionPolicy(zonemgr, 3, action, ((void*)0),
            sizeof(DWORD), URLZONEREG_DEFAULT);
    ok(hres == E_INVALIDARG, "GetZoneActionPolicy failed: %08x, expected E_INVALIDARG\n", hres);

    hres = IInternetZoneManager_GetZoneActionPolicy(zonemgr, 3, action, buf,
            2, URLZONEREG_DEFAULT);
    ok(hres == E_INVALIDARG, "GetZoneActionPolicy failed: %08x, expected E_INVALIDARG\n", hres);

    hres = IInternetZoneManager_GetZoneActionPolicy(zonemgr, 3, 0x1fff, buf,
            sizeof(DWORD), URLZONEREG_DEFAULT);
    ok(hres == E_FAIL || broken(hres == HRESULT_FROM_WIN32(ERROR_NOT_FOUND)),
            "(0x%x) got 0x%x (expected E_FAIL)\n", action, hres);

    hres = IInternetZoneManager_GetZoneActionPolicy(zonemgr, 13, action, buf,
            sizeof(DWORD), URLZONEREG_DEFAULT);
    ok(hres == E_INVALIDARG, "GetZoneActionPolicy failed: %08x, expected E_INVALIDARG\n", hres);

    IInternetZoneManager_Release(zonemgr);
}
