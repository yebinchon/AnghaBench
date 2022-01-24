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
typedef  int HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int S_FALSE ; 
 int S_OK ; 
 int URLPOLICY_DISALLOW ; 
 int /*<<< orphan*/  URLZONEREG_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,...) ; 
 int /*<<< orphan*/  url1 ; 

__attribute__((used)) static void FUNC3(IInternetSecurityManager *secmgr, IInternetZoneManager *zonemgr, DWORD action)
{
    DWORD policy;
    HRESULT hres;

    policy = 0xdeadbeef;
    hres = FUNC1(zonemgr, 3, action, (BYTE*)&policy,
            sizeof(DWORD), URLZONEREG_DEFAULT);
    FUNC2(hres == S_OK, "GetZoneActionPolicy failed: %08x\n", hres);
    FUNC2(policy == URLPOLICY_DISALLOW, "(%x) policy=%x, expected URLPOLICY_DISALLOW\n", action, policy);

    policy = 0xdeadbeef;
    hres = FUNC0(secmgr, url1, action, (BYTE*)&policy,
            sizeof(WCHAR), NULL, 0, 0, 0);
    FUNC2(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);

    policy = 0xdeadbeef;
    hres = FUNC0(secmgr, url1, action, (BYTE*)&policy,
            sizeof(DWORD), NULL, 0, 0, 0);
    FUNC2(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
    FUNC2(policy == URLPOLICY_DISALLOW, "policy = %x\n", policy);
}