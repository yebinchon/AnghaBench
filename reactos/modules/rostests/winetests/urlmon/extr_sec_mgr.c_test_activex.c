
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CONFIRMSAFETY {scalar_t__ dwFlags; int * pUnk; scalar_t__ clsid; } ;
typedef int cs ;
typedef int IUnknown ;
typedef int IInternetSecurityManager ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int CLSID ;
typedef int BYTE ;


 scalar_t__ CLSID_TestActiveX ;
 int ERROR_NOT_FOUND ;
 int GUID_CUSTOM_CONFIRMOBJECTSAFETY ;
 int HRESULT_FROM_WIN32 (int ) ;
 int IInternetSecurityManager_ProcessUrlAction (int *,int ,int ,int *,int,int *,int,int ,int ) ;
 int IInternetSecurityManager_QueryCustomPolicy (int *,int ,int *,int **,int*,int *,int,int ) ;
 int S_OK ;
 int URLACTION_ACTIVEX_RUN ;
 int URLPOLICY_ALLOW ;
 int URLPOLICY_DISALLOW ;
 int ok (int,char*,int) ;
 int url1 ;

__attribute__((used)) static void test_activex(IInternetSecurityManager *secmgr)
{
    DWORD policy, policy_size;
    struct CONFIRMSAFETY cs;
    BYTE *ppolicy;
    HRESULT hres;

    policy = 0xdeadbeef;
    hres = IInternetSecurityManager_ProcessUrlAction(secmgr, url1, URLACTION_ACTIVEX_RUN, (BYTE*)&policy,
            sizeof(DWORD), (BYTE*)&CLSID_TestActiveX, sizeof(CLSID), 0, 0);
    ok(hres == S_OK, "ProcessUrlAction(URLACTION_ACTIVEX_RUN) failed: %08x\n", hres);
    ok(policy == URLPOLICY_ALLOW || policy == URLPOLICY_DISALLOW, "policy = %x\n", policy);

    cs.clsid = CLSID_TestActiveX;
    cs.pUnk = (IUnknown*)0xdeadbeef;
    cs.dwFlags = 0;
    hres = IInternetSecurityManager_QueryCustomPolicy(secmgr, url1, &GUID_CUSTOM_CONFIRMOBJECTSAFETY,
            &ppolicy, &policy_size, (BYTE*)&cs, sizeof(cs), 0);
    ok(hres == HRESULT_FROM_WIN32(ERROR_NOT_FOUND), "QueryCusromPolicy failed: %08x\n", hres);
}
