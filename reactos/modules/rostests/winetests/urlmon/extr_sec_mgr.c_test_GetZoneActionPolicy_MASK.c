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
typedef  int /*<<< orphan*/  IInternetZoneManager ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NOT_FOUND ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ URLACTION_CREDENTIALS_USE ; 
 scalar_t__ URLPOLICY_CREDENTIALS_ANONYMOUS_ONLY ; 
 scalar_t__ URLPOLICY_CREDENTIALS_CONDITIONAL_PROMPT ; 
 scalar_t__ URLPOLICY_CREDENTIALS_MUST_PROMPT_USER ; 
 scalar_t__ URLPOLICY_CREDENTIALS_SILENT_LOGON_OK ; 
 int /*<<< orphan*/  URLZONEREG_DEFAULT ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    IInternetZoneManager *zonemgr = NULL;
    BYTE buf[32];
    HRESULT hres;
    DWORD action = URLACTION_CREDENTIALS_USE; /* Implemented on all IE versions */

    FUNC7("testing GetZoneActionPolixy...\n");

    hres = FUNC6(NULL, &zonemgr, 0);
    FUNC5(hres == S_OK, "CoInternetCreateZoneManager failed: %08x\n", hres);
    if(FUNC0(hres))
        return;

    hres = FUNC2(zonemgr, 3, action, buf,
            sizeof(DWORD), URLZONEREG_DEFAULT);
    FUNC5(hres == S_OK, "GetZoneActionPolicy failed: %08x\n", hres);
    FUNC5(*(DWORD*)buf == URLPOLICY_CREDENTIALS_SILENT_LOGON_OK ||
            *(DWORD*)buf == URLPOLICY_CREDENTIALS_MUST_PROMPT_USER ||
            *(DWORD*)buf == URLPOLICY_CREDENTIALS_CONDITIONAL_PROMPT ||
            *(DWORD*)buf == URLPOLICY_CREDENTIALS_ANONYMOUS_ONLY,
            "unexpected policy=%d\n", *(DWORD*)buf);

    hres = FUNC2(zonemgr, 3, action, NULL,
            sizeof(DWORD), URLZONEREG_DEFAULT);
    FUNC5(hres == E_INVALIDARG, "GetZoneActionPolicy failed: %08x, expected E_INVALIDARG\n", hres);

    hres = FUNC2(zonemgr, 3, action, buf,
            2, URLZONEREG_DEFAULT);
    FUNC5(hres == E_INVALIDARG, "GetZoneActionPolicy failed: %08x, expected E_INVALIDARG\n", hres);

    hres = FUNC2(zonemgr, 3, 0x1fff, buf,
            sizeof(DWORD), URLZONEREG_DEFAULT);
    FUNC5(hres == E_FAIL || FUNC4(hres == FUNC1(ERROR_NOT_FOUND)),
            "(0x%x) got 0x%x (expected E_FAIL)\n", action, hres);

    hres = FUNC2(zonemgr, 13, action, buf,
            sizeof(DWORD), URLZONEREG_DEFAULT);
    FUNC5(hres == E_INVALIDARG, "GetZoneActionPolicy failed: %08x, expected E_INVALIDARG\n", hres);

    FUNC3(zonemgr);
}