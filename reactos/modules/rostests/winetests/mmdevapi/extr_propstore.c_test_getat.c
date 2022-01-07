
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
typedef int PROPERTYKEY ;
typedef int IPropertyStore ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int DEVPKEY_Device_DeviceDesc ;
 int DEVPKEY_Device_FriendlyName ;
 int FALSE ;
 scalar_t__ IPropertyStore_GetAt (int *,scalar_t__,int *) ;
 scalar_t__ IPropertyStore_GetCount (int *,scalar_t__*) ;
 scalar_t__ IsEqualPropertyKey (int ,int ) ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_getat(IPropertyStore *store)
{
    HRESULT hr;
    DWORD propcount;
    DWORD prop;
    PROPERTYKEY pkey;
    BOOL found_name = FALSE;
    BOOL found_desc = FALSE;
    char temp[128];
    temp[sizeof(temp)-1] = 0;

    hr = IPropertyStore_GetCount(store, &propcount);

    ok(hr == S_OK, "Failed with %08x\n", hr);
    ok(propcount > 0, "Propcount %d should be greater than zero\n", propcount);

    for (prop = 0; prop < propcount; prop++) {
 hr = IPropertyStore_GetAt(store, prop, &pkey);
 ok(hr == S_OK, "Failed with %08x\n", hr);
 if (IsEqualPropertyKey(pkey, DEVPKEY_Device_FriendlyName))
     found_name = TRUE;
 if (IsEqualPropertyKey(pkey, DEVPKEY_Device_DeviceDesc))
     found_desc = TRUE;
    }
    ok(found_name ||
            broken(!found_name) , "DEVPKEY_Device_FriendlyName not found\n");
    ok(found_desc, "DEVPKEY_Device_DeviceDesc not found\n");
}
