
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int VARIANT ;
typedef int IPropertyBag ;
typedef int IParseDisplayName ;
typedef int IMoniker ;
typedef int IFilterMapper ;
typedef scalar_t__ HRESULT ;


 int CHARS_IN_GUID ;
 int CLSCTX_INPROC ;
 int CLSID_CDeviceMoniker ;
 int CLSID_FilterMapper2 ;
 int CLSID_LegacyAmFilterCategory ;
 int CLSID_TestFilter ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ IFilterMapper_RegisterFilter (int *,int ,char const*,int) ;
 int IFilterMapper_Release (int *) ;
 scalar_t__ IFilterMapper_UnregisterFilter (int *,int ) ;
 int IID_IFilterMapper ;
 int IID_IParseDisplayName ;
 int IID_IPropertyBag ;
 scalar_t__ IMoniker_BindToStorage (int *,int *,int *,int *,void**) ;
 int IMoniker_Release (int *) ;
 int IParseDisplayName_Release (int *) ;
 scalar_t__ IPropertyBag_Read (int *,int ,int *,int *) ;
 int IPropertyBag_Release (int *) ;
 scalar_t__ S_OK ;
 int StringFromGUID2 (int *,char*,int ) ;
 scalar_t__ VFW_E_BAD_KEY ;
 char* V_BSTR (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int backslashW ;
 int * check_display_name (int *,char*) ;
 int clsidW ;
 int cmW ;
 int deviceW ;
 int find_moniker (int *,int *) ;
 int friendly_name ;
 int lstrcatW (char*,int ) ;
 int lstrcmpW (char*,char*) ;
 int lstrcpyW (char*,int ) ;
 int lstrlenW (char*) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_legacy_filter(void)
{
    static const WCHAR nameW[] = {'t','e','s','t',0};
    IParseDisplayName *parser;
    IPropertyBag *prop_bag;
    IFilterMapper *mapper;
    IMoniker *mon;
    WCHAR buffer[200];
    VARIANT var;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_CDeviceMoniker, ((void*)0), CLSCTX_INPROC, &IID_IParseDisplayName, (void **)&parser);
    ok(hr == S_OK, "Failed to create ParseDisplayName: %#x\n", hr);

    hr = CoCreateInstance(&CLSID_FilterMapper2, ((void*)0), CLSCTX_INPROC, &IID_IFilterMapper, (void **)&mapper);
    ok(hr == S_OK, "Failed to create FilterMapper: %#x\n", hr);

    hr = IFilterMapper_RegisterFilter(mapper, CLSID_TestFilter, nameW, 0xdeadbeef);
    if (hr == VFW_E_BAD_KEY)
    {
        win_skip("not enough permissions to register filters\n");
        goto end;
    }
    ok(hr == S_OK, "RegisterFilter failed: %#x\n", hr);

    lstrcpyW(buffer, deviceW);
    lstrcatW(buffer, cmW);
    StringFromGUID2(&CLSID_LegacyAmFilterCategory, buffer + lstrlenW(buffer), CHARS_IN_GUID);
    lstrcatW(buffer, backslashW);
    StringFromGUID2(&CLSID_TestFilter, buffer + lstrlenW(buffer), CHARS_IN_GUID);

    mon = check_display_name(parser, buffer);
    ok(find_moniker(&CLSID_LegacyAmFilterCategory, mon), "filter should be registered\n");

    hr = IMoniker_BindToStorage(mon, ((void*)0), ((void*)0), &IID_IPropertyBag, (void **)&prop_bag);
    ok(hr == S_OK, "BindToStorage failed: %#x\n", hr);

    VariantInit(&var);
    hr = IPropertyBag_Read(prop_bag, friendly_name, &var, ((void*)0));
    ok(hr == S_OK, "Read failed: %#x\n", hr);

    StringFromGUID2(&CLSID_TestFilter, buffer, CHARS_IN_GUID);
    ok(!lstrcmpW(buffer, V_BSTR(&var)), "expected %s, got %s\n",
        wine_dbgstr_w(buffer), wine_dbgstr_w(V_BSTR(&var)));

    VariantClear(&var);
    hr = IPropertyBag_Read(prop_bag, clsidW, &var, ((void*)0));
    ok(hr == S_OK, "Read failed: %#x\n", hr);
    ok(!lstrcmpW(buffer, V_BSTR(&var)), "expected %s, got %s\n",
        wine_dbgstr_w(buffer), wine_dbgstr_w(V_BSTR(&var)));

    VariantClear(&var);
    IPropertyBag_Release(prop_bag);

    hr = IFilterMapper_UnregisterFilter(mapper, CLSID_TestFilter);
    ok(hr == S_OK, "UnregisterFilter failed: %#x\n", hr);

    ok(!find_moniker(&CLSID_LegacyAmFilterCategory, mon), "filter should not be registered\n");
    IMoniker_Release(mon);

end:
    IFilterMapper_Release(mapper);
    IParseDisplayName_Release(parser);
}
