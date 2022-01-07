
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IObjectSafety ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int IID_IDispatch ;
 int IID_IObjectSafety ;
 int IObjectSafety_Release (int *) ;
 scalar_t__ IObjectSafety_SetInterfaceSafetyOptions (int *,int *,int,int) ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void set_safety_opt(IUnknown *unk, DWORD mask, DWORD opts)
{
    IObjectSafety *obj_safety;
    HRESULT hr;

    hr = IUnknown_QueryInterface(unk, &IID_IObjectSafety, (void**)&obj_safety);
    ok(hr == S_OK, "Could not get IObjectSafety iface: %08x\n", hr);

    hr = IObjectSafety_SetInterfaceSafetyOptions(obj_safety, &IID_IDispatch, mask, mask&opts);
    ok(hr == S_OK, "SetInterfaceSafetyOptions failed: %08x\n", hr);

    IObjectSafety_Release(obj_safety);
}
