
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int temp ;
struct TYPE_5__ {scalar_t__ pwszVal; } ;
struct TYPE_6__ {scalar_t__ vt; TYPE_1__ u; } ;
typedef TYPE_2__ PROPVARIANT ;
typedef int PROPERTYKEY ;
typedef int IPropertyStore ;
typedef scalar_t__ HRESULT ;


 int CP_ACP ;
 int DEVPKEY_DeviceInterface_ClassGuid ;
 int DEVPKEY_DeviceInterface_Enabled ;
 int DEVPKEY_DeviceInterface_FriendlyName ;
 scalar_t__ IPropertyStore_GetValue (int *,int const*,TYPE_2__*) ;
 int const PKEY_AudioEndpoint_GUID ;
 int PropVariantClear (TYPE_2__*) ;
 scalar_t__ S_OK ;
 scalar_t__ VT_EMPTY ;
 scalar_t__ VT_LPWSTR ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,char*,int,int *,int *) ;
 int ok (int,char*,...) ;
 int trace (char*,char*) ;

__attribute__((used)) static void test_propertystore(IPropertyStore *store)
{
    HRESULT hr;
    PROPVARIANT pv;
    char temp[128];
    temp[sizeof(temp)-1] = 0;

    pv.vt = VT_EMPTY;
    hr = IPropertyStore_GetValue(store, &PKEY_AudioEndpoint_GUID, &pv);
    ok(hr == S_OK, "Failed with %08x\n", hr);
    ok(pv.vt == VT_LPWSTR, "Value should be %i, is %i\n", VT_LPWSTR, pv.vt);
    if (hr == S_OK && pv.vt == VT_LPWSTR)
    {
        WideCharToMultiByte(CP_ACP, 0, pv.u.pwszVal, -1, temp, sizeof(temp)-1, ((void*)0), ((void*)0));
        trace("guid: %s\n", temp);
        PropVariantClear(&pv);
    }

    pv.vt = VT_EMPTY;
    hr = IPropertyStore_GetValue(store, (const PROPERTYKEY*)&DEVPKEY_DeviceInterface_FriendlyName, &pv);
    ok(hr == S_OK, "Failed with %08x\n", hr);
    ok(pv.vt == VT_LPWSTR && pv.u.pwszVal, "FriendlyName value had wrong type: 0x%x or was NULL\n", pv.vt);
    PropVariantClear(&pv);

    pv.vt = VT_EMPTY;
    hr = IPropertyStore_GetValue(store, (const PROPERTYKEY*)&DEVPKEY_DeviceInterface_Enabled, &pv);
    ok(hr == S_OK, "Failed with %08x\n", hr);
    ok(pv.vt == VT_EMPTY, "Key should not be found\n");
    PropVariantClear(&pv);

    pv.vt = VT_EMPTY;
    hr = IPropertyStore_GetValue(store, (const PROPERTYKEY*)&DEVPKEY_DeviceInterface_ClassGuid, &pv);
    ok(hr == S_OK, "Failed with %08x\n", hr);
    ok(pv.vt == VT_EMPTY, "Key should not be found\n");
    PropVariantClear(&pv);
}
