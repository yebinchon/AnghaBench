
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INetFwPolicy2 ;
typedef int INetFwPolicy ;
typedef int INetFwMgr ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_NetFwMgr ;
 int CLSID_NetFwPolicy2 ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 scalar_t__ E_NOINTERFACE ;
 int IID_INetFwMgr ;
 int IID_INetFwPolicy ;
 int IID_INetFwPolicy2 ;
 scalar_t__ INetFwMgr_QueryInterface (int *,int *,void**) ;
 int INetFwMgr_Release (int *) ;
 scalar_t__ INetFwMgr_get_LocalPolicy (int *,int **) ;
 int INetFwPolicy2_Release (int *) ;
 scalar_t__ INetFwPolicy_QueryInterface (int *,int *,void**) ;
 int INetFwPolicy_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_policy2_rules (int *) ;
 int win_skip (char*,scalar_t__) ;

__attribute__((used)) static void test_interfaces(void)
{
    INetFwMgr *manager;
    INetFwPolicy *policy;
    INetFwPolicy2 *policy2;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_NetFwMgr, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_INetFwMgr, (void**)&manager);
    ok(hr == S_OK, "NetFwMgr create failed: %08x\n", hr);

    hr = INetFwMgr_QueryInterface(manager, &IID_INetFwPolicy, (void**)&policy);
    ok(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

    hr = INetFwMgr_QueryInterface(manager, &IID_INetFwPolicy2, (void**)&policy2);
    ok(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

    hr = INetFwMgr_get_LocalPolicy(manager, &policy);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = INetFwPolicy_QueryInterface(policy, &IID_INetFwPolicy2, (void**)&policy2);
    ok(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

    INetFwPolicy_Release(policy);

    hr = CoCreateInstance(&CLSID_NetFwPolicy2, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_INetFwPolicy2, (void**)&policy2);
    if(hr == S_OK)
    {
        test_policy2_rules(policy2);

        INetFwPolicy2_Release(policy2);
    }
    else
        win_skip("NetFwPolicy2 object is not supported: %08x\n", hr);

    INetFwMgr_Release(manager);
}
