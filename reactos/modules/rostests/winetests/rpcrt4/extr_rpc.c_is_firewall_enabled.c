
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VARIANT_BOOL ;
typedef int INetFwProfile ;
typedef int INetFwPolicy ;
typedef int INetFwMgr ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_NetFwMgr ;
 int COINIT_APARTMENTTHREADED ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ CoInitializeEx (int ,int ) ;
 int CoUninitialize () ;
 int IID_INetFwMgr ;
 int INetFwMgr_Release (int *) ;
 scalar_t__ INetFwMgr_get_LocalPolicy (int *,int **) ;
 int INetFwPolicy_Release (int *) ;
 scalar_t__ INetFwPolicy_get_CurrentProfile (int *,int **) ;
 int INetFwProfile_Release (int *) ;
 scalar_t__ INetFwProfile_get_FirewallEnabled (int *,scalar_t__*) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ VARIANT_FALSE ;
 scalar_t__ VARIANT_TRUE ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static BOOL is_firewall_enabled(void)
{
    HRESULT hr, init;
    INetFwMgr *mgr = ((void*)0);
    INetFwPolicy *policy = ((void*)0);
    INetFwProfile *profile = ((void*)0);
    VARIANT_BOOL enabled = VARIANT_FALSE;

    init = CoInitializeEx( 0, COINIT_APARTMENTTHREADED );

    hr = CoCreateInstance( &CLSID_NetFwMgr, ((void*)0), CLSCTX_INPROC_SERVER, &IID_INetFwMgr,
                           (void **)&mgr );
    ok( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = INetFwMgr_get_LocalPolicy( mgr, &policy );
    ok( hr == S_OK, "got %08x\n", hr );
    if (hr != S_OK) goto done;

    hr = INetFwPolicy_get_CurrentProfile( policy, &profile );
    if (hr != S_OK) goto done;

    hr = INetFwProfile_get_FirewallEnabled( profile, &enabled );
    ok( hr == S_OK, "got %08x\n", hr );

done:
    if (policy) INetFwPolicy_Release( policy );
    if (profile) INetFwProfile_Release( profile );
    if (mgr) INetFwMgr_Release( mgr );
    if (SUCCEEDED( init )) CoUninitialize();
    return (enabled == VARIANT_TRUE);
}
