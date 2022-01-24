#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IInternetZoneManager ;
typedef  int /*<<< orphan*/  IInternetSecurityManager ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ E_FAIL ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ParseUrl_SECURITY_URL_http ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ URLPOLICY_DISALLOW ; 
 scalar_t__ URLPOLICY_QUERY ; 
 int /*<<< orphan*/  URLZONEREG_DEFAULT ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  called_securl_http ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  url9 ; 
 scalar_t__ winetest_interactive ; 
 int /*<<< orphan*/  winetest_to_httpW ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC13(IInternetSecurityManager *secmgr, IInternetZoneManager *zonemgr, DWORD action)
{
    DWORD res, size, policy, reg_policy;
    char buf[10];
    HKEY hkey;
    HRESULT hres;

    /* FIXME: HKEY_CURRENT_USER is most of the time the default but this can be changed on a system.
     * The test should be changed to cope with that, if need be.
     */
    res = FUNC5(HKEY_CURRENT_USER,
            "Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3", &hkey);
    FUNC10(res == ERROR_SUCCESS, "Could not open zone key\n");
    if(res != ERROR_SUCCESS)
        return;

    FUNC12(buf, "%X", action);
    size = sizeof(DWORD);
    res = FUNC6(hkey, buf, NULL, NULL, (BYTE*)&reg_policy, &size);
    FUNC4(hkey);

    /* Try settings from HKEY_LOCAL_MACHINE. */
    if(res != ERROR_SUCCESS || size != sizeof(DWORD)) {
        res = FUNC5(HKEY_LOCAL_MACHINE,
                "Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3", &hkey);
        FUNC10(res == ERROR_SUCCESS, "Could not open zone key\n");

        size = sizeof(DWORD);
        res = FUNC6(hkey, buf, NULL, NULL, (BYTE*)&reg_policy, &size);
        FUNC4(hkey);
    }

    if(res != ERROR_SUCCESS || size != sizeof(DWORD)) {
        policy = 0xdeadbeef;
        hres = FUNC2(secmgr, url9, action, (BYTE*)&policy,
                sizeof(WCHAR), NULL, 0, 0, 0);
        FUNC10(hres == E_FAIL || FUNC8(hres == FUNC1(ERROR_NOT_FOUND)),
            "(0x%x) got 0x%x (expected E_FAIL)\n", action, hres);
        FUNC10(policy == 0xdeadbeef, "(%x) policy=%x\n", action, policy);

        policy = 0xdeadbeef;
        hres = FUNC3(zonemgr, 3, action, (BYTE*)&policy,
                sizeof(DWORD), URLZONEREG_DEFAULT);
        FUNC10(hres == E_FAIL || FUNC8(hres == FUNC1(ERROR_NOT_FOUND)),
            "(0x%x) got 0x%x (expected E_FAIL)\n", action, hres);
        FUNC10(policy == 0xdeadbeef, "(%x) policy=%x\n", action, policy);
        return;
    }

    policy = 0xdeadbeef;
    hres = FUNC3(zonemgr, 3, action, (BYTE*)&policy,
            sizeof(DWORD), URLZONEREG_DEFAULT);
    FUNC10(hres == S_OK, "GetZoneActionPolicy failed: %08x\n", hres);
    FUNC10(policy == reg_policy, "(%x) policy=%x, expected %x\n", action, policy, reg_policy);

    if(policy != URLPOLICY_QUERY) {
        if(winetest_interactive || ! FUNC9()) {
            BOOL expect_parse_call = !called_securl_http;

            policy = 0xdeadbeef;
            hres = FUNC2(secmgr, url9, action, (BYTE*)&policy,
                    sizeof(WCHAR), NULL, 0, 0, 0);
            if(reg_policy == URLPOLICY_DISALLOW)
                FUNC10(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
            else
                FUNC10(hres == S_OK, "ProcessUrlAction(%x) failed: %08x\n", action, hres);
            FUNC10(policy == 0xdeadbeef, "(%x) policy=%x\n", action, policy);

            policy = 0xdeadbeef;
            hres = FUNC2(secmgr, url9, action, (BYTE*)&policy,
                    2, NULL, 0, 0, 0);
            if(reg_policy == URLPOLICY_DISALLOW)
                FUNC10(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
            else
                FUNC10(hres == S_OK, "ProcessUrlAction(%x) failed: %08x\n", action, hres);
            FUNC10(policy == 0xdeadbeef, "(%x) policy=%x\n", action, policy);

            policy = 0xdeadbeef;
            hres = FUNC2(secmgr, url9, action, (BYTE*)&policy,
                    sizeof(DWORD), NULL, 0, 0, 0);
            if(reg_policy == URLPOLICY_DISALLOW)
                FUNC10(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
            else
                FUNC10(hres == S_OK, "ProcessUrlAction(%x) failed: %08x\n", action, hres);
            FUNC10(policy == reg_policy, "(%x) policy=%x\n", action, policy);

            policy = 0xdeadbeef;
            hres = FUNC2(secmgr, url9, action, (BYTE*)&policy,
                    sizeof(WCHAR), (BYTE*)0xdeadbeef, 16, 0, 0);
            if(reg_policy == URLPOLICY_DISALLOW)
                FUNC10(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
            else
                FUNC10(hres == S_OK, "ProcessUrlAction(%x) failed: %08x\n", action, hres);
            FUNC10(policy == 0xdeadbeef, "(%x) policy=%x\n", action, policy);

            policy = 0xdeadbeef;
            if(expect_parse_call)
                FUNC7(ParseUrl_SECURITY_URL_http);
            hres = FUNC2(secmgr, winetest_to_httpW, action, (BYTE*)&policy,
                    sizeof(DWORD), NULL, 0, 0, 0);
            if(expect_parse_call)
                FUNC0(ParseUrl_SECURITY_URL_http);
            if(reg_policy == URLPOLICY_DISALLOW)
                FUNC10(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
            else
                FUNC10(hres == S_OK, "ProcessUrlAction(%x) failed: %08x\n", action, hres);
            FUNC10(policy == reg_policy, "(%x) policy=%x\n", action, policy);
        }else {
            FUNC11("IE running in Enhanced Security Configuration\n");
        }
    }
}