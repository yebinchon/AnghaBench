
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IInternetZoneManager ;
typedef int IInternetSecurityManager ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CHECK_CALLED (int ) ;
 int ERROR_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ E_FAIL ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 scalar_t__ IInternetSecurityManager_ProcessUrlAction (int *,int ,scalar_t__,int *,int,int *,int,int ,int ) ;
 scalar_t__ IInternetZoneManager_GetZoneActionPolicy (int *,int,scalar_t__,int *,int,int ) ;
 int ParseUrl_SECURITY_URL_http ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int *,int *,int *,scalar_t__*) ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ URLPOLICY_DISALLOW ;
 scalar_t__ URLPOLICY_QUERY ;
 int URLZONEREG_DEFAULT ;
 scalar_t__ broken (int) ;
 int called_securl_http ;
 int is_ie_hardened () ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int url9 ;
 scalar_t__ winetest_interactive ;
 int winetest_to_httpW ;
 int wsprintfA (char*,char*,scalar_t__) ;

__attribute__((used)) static void test_url_action(IInternetSecurityManager *secmgr, IInternetZoneManager *zonemgr, DWORD action)
{
    DWORD res, size, policy, reg_policy;
    char buf[10];
    HKEY hkey;
    HRESULT hres;




    res = RegOpenKeyA(HKEY_CURRENT_USER,
            "Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3", &hkey);
    ok(res == ERROR_SUCCESS, "Could not open zone key\n");
    if(res != ERROR_SUCCESS)
        return;

    wsprintfA(buf, "%X", action);
    size = sizeof(DWORD);
    res = RegQueryValueExA(hkey, buf, ((void*)0), ((void*)0), (BYTE*)&reg_policy, &size);
    RegCloseKey(hkey);


    if(res != ERROR_SUCCESS || size != sizeof(DWORD)) {
        res = RegOpenKeyA(HKEY_LOCAL_MACHINE,
                "Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3", &hkey);
        ok(res == ERROR_SUCCESS, "Could not open zone key\n");

        size = sizeof(DWORD);
        res = RegQueryValueExA(hkey, buf, ((void*)0), ((void*)0), (BYTE*)&reg_policy, &size);
        RegCloseKey(hkey);
    }

    if(res != ERROR_SUCCESS || size != sizeof(DWORD)) {
        policy = 0xdeadbeef;
        hres = IInternetSecurityManager_ProcessUrlAction(secmgr, url9, action, (BYTE*)&policy,
                sizeof(WCHAR), ((void*)0), 0, 0, 0);
        ok(hres == E_FAIL || broken(hres == HRESULT_FROM_WIN32(ERROR_NOT_FOUND)),
            "(0x%x) got 0x%x (expected E_FAIL)\n", action, hres);
        ok(policy == 0xdeadbeef, "(%x) policy=%x\n", action, policy);

        policy = 0xdeadbeef;
        hres = IInternetZoneManager_GetZoneActionPolicy(zonemgr, 3, action, (BYTE*)&policy,
                sizeof(DWORD), URLZONEREG_DEFAULT);
        ok(hres == E_FAIL || broken(hres == HRESULT_FROM_WIN32(ERROR_NOT_FOUND)),
            "(0x%x) got 0x%x (expected E_FAIL)\n", action, hres);
        ok(policy == 0xdeadbeef, "(%x) policy=%x\n", action, policy);
        return;
    }

    policy = 0xdeadbeef;
    hres = IInternetZoneManager_GetZoneActionPolicy(zonemgr, 3, action, (BYTE*)&policy,
            sizeof(DWORD), URLZONEREG_DEFAULT);
    ok(hres == S_OK, "GetZoneActionPolicy failed: %08x\n", hres);
    ok(policy == reg_policy, "(%x) policy=%x, expected %x\n", action, policy, reg_policy);

    if(policy != URLPOLICY_QUERY) {
        if(winetest_interactive || ! is_ie_hardened()) {
            BOOL expect_parse_call = !called_securl_http;

            policy = 0xdeadbeef;
            hres = IInternetSecurityManager_ProcessUrlAction(secmgr, url9, action, (BYTE*)&policy,
                    sizeof(WCHAR), ((void*)0), 0, 0, 0);
            if(reg_policy == URLPOLICY_DISALLOW)
                ok(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
            else
                ok(hres == S_OK, "ProcessUrlAction(%x) failed: %08x\n", action, hres);
            ok(policy == 0xdeadbeef, "(%x) policy=%x\n", action, policy);

            policy = 0xdeadbeef;
            hres = IInternetSecurityManager_ProcessUrlAction(secmgr, url9, action, (BYTE*)&policy,
                    2, ((void*)0), 0, 0, 0);
            if(reg_policy == URLPOLICY_DISALLOW)
                ok(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
            else
                ok(hres == S_OK, "ProcessUrlAction(%x) failed: %08x\n", action, hres);
            ok(policy == 0xdeadbeef, "(%x) policy=%x\n", action, policy);

            policy = 0xdeadbeef;
            hres = IInternetSecurityManager_ProcessUrlAction(secmgr, url9, action, (BYTE*)&policy,
                    sizeof(DWORD), ((void*)0), 0, 0, 0);
            if(reg_policy == URLPOLICY_DISALLOW)
                ok(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
            else
                ok(hres == S_OK, "ProcessUrlAction(%x) failed: %08x\n", action, hres);
            ok(policy == reg_policy, "(%x) policy=%x\n", action, policy);

            policy = 0xdeadbeef;
            hres = IInternetSecurityManager_ProcessUrlAction(secmgr, url9, action, (BYTE*)&policy,
                    sizeof(WCHAR), (BYTE*)0xdeadbeef, 16, 0, 0);
            if(reg_policy == URLPOLICY_DISALLOW)
                ok(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
            else
                ok(hres == S_OK, "ProcessUrlAction(%x) failed: %08x\n", action, hres);
            ok(policy == 0xdeadbeef, "(%x) policy=%x\n", action, policy);

            policy = 0xdeadbeef;
            if(expect_parse_call)
                SET_EXPECT(ParseUrl_SECURITY_URL_http);
            hres = IInternetSecurityManager_ProcessUrlAction(secmgr, winetest_to_httpW, action, (BYTE*)&policy,
                    sizeof(DWORD), ((void*)0), 0, 0, 0);
            if(expect_parse_call)
                CHECK_CALLED(ParseUrl_SECURITY_URL_http);
            if(reg_policy == URLPOLICY_DISALLOW)
                ok(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
            else
                ok(hres == S_OK, "ProcessUrlAction(%x) failed: %08x\n", action, hres);
            ok(policy == reg_policy, "(%x) policy=%x\n", action, policy);
        }else {
            skip("IE running in Enhanced Security Configuration\n");
        }
    }
}
