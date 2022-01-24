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
struct CONFIRMSAFETY {scalar_t__ dwFlags; int /*<<< orphan*/ * pUnk; scalar_t__ clsid; } ;
typedef  int /*<<< orphan*/  cs ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IInternetSecurityManager ;
typedef  int HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ CLSID_TestActiveX ; 
 int /*<<< orphan*/  ERROR_NOT_FOUND ; 
 int /*<<< orphan*/  GUID_CUSTOM_CONFIRMOBJECTSAFETY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int S_OK ; 
 int /*<<< orphan*/  URLACTION_ACTIVEX_RUN ; 
 int URLPOLICY_ALLOW ; 
 int URLPOLICY_DISALLOW ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  url1 ; 

__attribute__((used)) static void FUNC4(IInternetSecurityManager *secmgr)
{
    DWORD policy, policy_size;
    struct CONFIRMSAFETY cs;
    BYTE *ppolicy;
    HRESULT hres;

    policy = 0xdeadbeef;
    hres = FUNC1(secmgr, url1, URLACTION_ACTIVEX_RUN, (BYTE*)&policy,
            sizeof(DWORD), (BYTE*)&CLSID_TestActiveX, sizeof(CLSID), 0, 0);
    FUNC3(hres == S_OK, "ProcessUrlAction(URLACTION_ACTIVEX_RUN) failed: %08x\n", hres);
    FUNC3(policy == URLPOLICY_ALLOW || policy == URLPOLICY_DISALLOW, "policy = %x\n", policy);

    cs.clsid = CLSID_TestActiveX;
    cs.pUnk = (IUnknown*)0xdeadbeef;
    cs.dwFlags = 0;
    hres = FUNC2(secmgr, url1, &GUID_CUSTOM_CONFIRMOBJECTSAFETY,
            &ppolicy, &policy_size, (BYTE*)&cs, sizeof(cs), 0);
    FUNC3(hres == FUNC0(ERROR_NOT_FOUND), "QueryCusromPolicy failed: %08x\n", hres);
}