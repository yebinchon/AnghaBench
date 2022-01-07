
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IInternetZoneManager ;
typedef int IInternetSecurityManager ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int IInternetSecurityManager_ProcessUrlAction (int *,int ,int,int *,int,int *,int ,int ,int ) ;
 int IInternetZoneManager_GetZoneActionPolicy (int *,int,int,int *,int,int ) ;
 int S_FALSE ;
 int S_OK ;
 int URLPOLICY_DISALLOW ;
 int URLZONEREG_DEFAULT ;
 int ok (int,char*,int,...) ;
 int url1 ;

__attribute__((used)) static void test_special_url_action(IInternetSecurityManager *secmgr, IInternetZoneManager *zonemgr, DWORD action)
{
    DWORD policy;
    HRESULT hres;

    policy = 0xdeadbeef;
    hres = IInternetZoneManager_GetZoneActionPolicy(zonemgr, 3, action, (BYTE*)&policy,
            sizeof(DWORD), URLZONEREG_DEFAULT);
    ok(hres == S_OK, "GetZoneActionPolicy failed: %08x\n", hres);
    ok(policy == URLPOLICY_DISALLOW, "(%x) policy=%x, expected URLPOLICY_DISALLOW\n", action, policy);

    policy = 0xdeadbeef;
    hres = IInternetSecurityManager_ProcessUrlAction(secmgr, url1, action, (BYTE*)&policy,
            sizeof(WCHAR), ((void*)0), 0, 0, 0);
    ok(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);

    policy = 0xdeadbeef;
    hres = IInternetSecurityManager_ProcessUrlAction(secmgr, url1, action, (BYTE*)&policy,
            sizeof(DWORD), ((void*)0), 0, 0, 0);
    ok(hres == S_FALSE, "ProcessUrlAction(%x) failed: %08x, expected S_FALSE\n", action, hres);
    ok(policy == URLPOLICY_DISALLOW, "policy = %x\n", policy);
}
