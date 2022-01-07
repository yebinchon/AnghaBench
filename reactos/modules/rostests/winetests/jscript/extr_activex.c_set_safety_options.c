
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IObjectSafety ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (scalar_t__) ;
 int IID_IActiveScriptParse ;
 int IID_IObjectSafety ;
 int INTERFACESAFE_FOR_UNTRUSTED_DATA ;
 int INTERFACE_USES_DISPEX ;
 int INTERFACE_USES_SECURITY_MANAGER ;
 scalar_t__ IObjectSafety_GetInterfaceSafetyOptions (int *,int *,int*,int*) ;
 int IObjectSafety_Release (int *) ;
 scalar_t__ IObjectSafety_SetInterfaceSafetyOptions (int *,int *,int,int) ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 scalar_t__ S_OK ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void set_safety_options(IUnknown *unk, BOOL use_sec_mgr)
{
    IObjectSafety *safety;
    DWORD supported, enabled, options_all, options_set;
    HRESULT hres;

    hres = IUnknown_QueryInterface(unk, &IID_IObjectSafety, (void**)&safety);
    ok(hres == S_OK, "Could not get IObjectSafety: %08x\n", hres);
    if(FAILED(hres))
        return;

    options_all = INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER;
    if(use_sec_mgr)
        options_set = options_all;
    else
        options_set = INTERFACE_USES_DISPEX;

    hres = IObjectSafety_SetInterfaceSafetyOptions(safety, &IID_IActiveScriptParse, options_all, options_set);
    ok(hres == S_OK, "SetInterfaceSafetyOptions failed: %08x\n", hres);

    supported = enabled = 0xdeadbeef;
    hres = IObjectSafety_GetInterfaceSafetyOptions(safety, &IID_IActiveScriptParse, &supported, &enabled);
    ok(hres == S_OK, "GetInterfaceSafetyOptions failed: %08x\n", hres);
    ok(supported == options_all, "supported=%x, expected %x\n", supported, options_all);
    ok(enabled == options_set, "enabled=%x, expected %x\n", enabled, options_set);

    IObjectSafety_Release(safety);
}
