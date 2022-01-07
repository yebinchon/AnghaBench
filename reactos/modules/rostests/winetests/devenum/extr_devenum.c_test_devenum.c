
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VARIANT ;
typedef void* LPVOID ;
typedef int IPropertyBag ;
typedef int IMoniker ;
typedef int IEnumMoniker ;
typedef int ICreateDevEnum ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int CLSCTX_INPROC ;
 scalar_t__ CLSIDFromString (int *,int *) ;
 int CLSID_ActiveMovieCategories ;
 int CLSID_CDeviceMoniker ;
 int CLSID_SystemDeviceEnum ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoTaskMemFree (int *) ;
 scalar_t__ ERROR_KEY_DOES_NOT_EXIST ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_POINTER ;
 scalar_t__ ICreateDevEnum_CreateClassEnumerator (int *,int *,int **,int ) ;
 int ICreateDevEnum_Release (int *) ;
 scalar_t__ IEnumMoniker_Next (int *,int,int **,int *) ;
 int IEnumMoniker_Release (int *) ;
 int IID_ICreateDevEnum ;
 int IID_IPropertyBag ;
 int IID_IUnknown ;
 scalar_t__ IMoniker_BindToObject (int *,int *,int *,int *,int *) ;
 scalar_t__ IMoniker_BindToStorage (int *,int *,int *,int *,void**) ;
 scalar_t__ IMoniker_GetClassID (int *,int *) ;
 scalar_t__ IMoniker_GetDisplayName (int *,int *,int *,int **) ;
 int IMoniker_Release (int *) ;
 scalar_t__ IPropertyBag_Read (int *,int ,int *,int *) ;
 int IPropertyBag_Release (int *) ;
 int IsEqualGUID (int *,int *) ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int * V_BSTR (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int clsidW ;
 int friendly_name ;
 int ok (int,char*,...) ;
 int trace (char*,int ,int ) ;
 int wine_dbgstr_guid (int *) ;
 int wine_dbgstr_w (int *) ;
 int winetest_debug ;

__attribute__((used)) static void test_devenum(IBindCtx *bind_ctx)
{
    IEnumMoniker *enum_cat, *enum_moniker;
    ICreateDevEnum* create_devenum;
    IPropertyBag *prop_bag;
    IMoniker *moniker;
    GUID cat_guid, clsid;
    WCHAR *displayname;
    VARIANT var;
    HRESULT hr;
    int count;

    hr = CoCreateInstance(&CLSID_SystemDeviceEnum, ((void*)0), CLSCTX_INPROC,
                           &IID_ICreateDevEnum, (LPVOID*)&create_devenum);
    ok(hr == S_OK, "Failed to create devenum: %#x\n", hr);

    hr = ICreateDevEnum_CreateClassEnumerator(create_devenum, &CLSID_ActiveMovieCategories, &enum_cat, 0);
    ok(hr == S_OK, "Failed to enum categories: %#x\n", hr);

    while (IEnumMoniker_Next(enum_cat, 1, &moniker, ((void*)0)) == S_OK)
    {
        hr = IMoniker_BindToStorage(moniker, bind_ctx, ((void*)0), &IID_IPropertyBag, (void **)&prop_bag);
        ok(hr == S_OK, "IMoniker_BindToStorage failed: %#x\n", hr);

        VariantInit(&var);
        hr = IPropertyBag_Read(prop_bag, clsidW, &var, ((void*)0));
        ok(hr == S_OK, "Failed to read CLSID: %#x\n", hr);

        hr = CLSIDFromString(V_BSTR(&var), &cat_guid);
        ok(hr == S_OK, "got %#x\n", hr);

        VariantClear(&var);
        hr = IPropertyBag_Read(prop_bag, friendly_name, &var, ((void*)0));
        ok(hr == S_OK, "Failed to read FriendlyName: %#x\n", hr);

        if (winetest_debug > 1)
            trace("%s %s:\n", wine_dbgstr_guid(&cat_guid), wine_dbgstr_w(V_BSTR(&var)));

        VariantClear(&var);
        IPropertyBag_Release(prop_bag);
        IMoniker_Release(moniker);

        hr = ICreateDevEnum_CreateClassEnumerator(create_devenum, &cat_guid, &enum_moniker, 0);
        ok(SUCCEEDED(hr), "Failed to enum devices: %#x\n", hr);

        if (hr == S_OK)
        {
            count = 0;

            while (IEnumMoniker_Next(enum_moniker, 1, &moniker, ((void*)0)) == S_OK)
            {
                hr = IMoniker_GetDisplayName(moniker, ((void*)0), ((void*)0), &displayname);
                ok(hr == S_OK, "got %#x\n", hr);

                hr = IMoniker_GetClassID(moniker, ((void*)0));
                ok(hr == E_INVALIDARG, "IMoniker_GetClassID should failed %x\n", hr);

                hr = IMoniker_GetClassID(moniker, &clsid);
                ok(hr == S_OK, "IMoniker_GetClassID failed with error %x\n", hr);
                ok(IsEqualGUID(&clsid, &CLSID_CDeviceMoniker),
                   "Expected CLSID_CDeviceMoniker got %s\n", wine_dbgstr_guid(&clsid));

                VariantInit(&var);
                hr = IMoniker_BindToStorage(moniker, bind_ctx, ((void*)0), &IID_IPropertyBag, (LPVOID*)&prop_bag);
                ok(hr == S_OK, "IMoniker_BindToStorage failed with error %x\n", hr);

                hr = IPropertyBag_Read(prop_bag, friendly_name, &var, ((void*)0));
                ok((hr == S_OK) | (hr == ERROR_KEY_DOES_NOT_EXIST),
     "IPropertyBag_Read failed: %#x\n", hr);

                if (winetest_debug > 1)
                    trace("  %s %s\n", wine_dbgstr_w(displayname), wine_dbgstr_w(V_BSTR(&var)));

                hr = IMoniker_BindToObject(moniker, bind_ctx, ((void*)0), &IID_IUnknown, ((void*)0));
                ok(hr == E_POINTER, "got %#x\n", hr);

                VariantClear(&var);
                CoTaskMemFree(displayname);
                IPropertyBag_Release(prop_bag);
                IMoniker_Release(moniker);
                count++;
            }
            IEnumMoniker_Release(enum_moniker);

            ok(count > 0, "CreateClassEnumerator() returned S_OK but no devices were enumerated.\n");
        }
    }

    IEnumMoniker_Release(enum_cat);
    ICreateDevEnum_Release(create_devenum);
}
