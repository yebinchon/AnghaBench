
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IInternetZoneManager ;
typedef int IInternetSecurityManager ;
typedef scalar_t__ HRESULT ;


 int IInternetSecurityManager_Release (int *) ;
 int IInternetZoneManager_Release (int *) ;
 scalar_t__ S_OK ;
 int URLACTION_ACTIVEX_OVERRIDE_OBJECT_SAFETY ;
 int URLACTION_ACTIVEX_OVERRIDE_SCRIPT_SAFETY ;
 int URLACTION_ACTIVEX_RUN ;
 int URLACTION_CHANNEL_SOFTDIST_PERMISSIONS ;
 int URLACTION_SCRIPT_OVERRIDE_SAFETY ;
 int URLACTION_SCRIPT_RUN ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCoInternetCreateSecurityManager (int *,int **,int ) ;
 scalar_t__ pCoInternetCreateZoneManager (int *,int **,int ) ;
 int test_activex (int *) ;
 int test_special_url_action (int *,int *,int ) ;
 int test_url_action (int *,int *,int) ;
 int trace (char*) ;

__attribute__((used)) static void test_polices(void)
{
    IInternetZoneManager *zonemgr = ((void*)0);
    IInternetSecurityManager *secmgr = ((void*)0);
    HRESULT hres;

    trace("testing polices...\n");

    hres = pCoInternetCreateSecurityManager(((void*)0), &secmgr, 0);
    ok(hres == S_OK, "CoInternetCreateSecurityManager failed: %08x\n", hres);
    hres = pCoInternetCreateZoneManager(((void*)0), &zonemgr, 0);
    ok(hres == S_OK, "CoInternetCreateZoneManager failed: %08x\n", hres);

    test_url_action(secmgr, zonemgr, URLACTION_SCRIPT_RUN);
    test_url_action(secmgr, zonemgr, URLACTION_ACTIVEX_RUN);
    test_url_action(secmgr, zonemgr, URLACTION_ACTIVEX_OVERRIDE_OBJECT_SAFETY);
    test_url_action(secmgr, zonemgr, URLACTION_CHANNEL_SOFTDIST_PERMISSIONS);
    test_url_action(secmgr, zonemgr, 0xdeadbeef);

    test_special_url_action(secmgr, zonemgr, URLACTION_SCRIPT_OVERRIDE_SAFETY);
    test_special_url_action(secmgr, zonemgr, URLACTION_ACTIVEX_OVERRIDE_SCRIPT_SAFETY);

    test_activex(secmgr);

    IInternetSecurityManager_Release(secmgr);
    IInternetZoneManager_Release(zonemgr);
}
