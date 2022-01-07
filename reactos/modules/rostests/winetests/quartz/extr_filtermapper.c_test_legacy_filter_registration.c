
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int testfilterW ;
typedef int clsidstring ;
typedef char WCHAR ;
typedef int ULONG ;
struct TYPE_3__ {int Clsid; int Name; } ;
typedef TYPE_1__ REGFILTER ;
typedef scalar_t__ LRESULT ;
typedef int IFilterMapper2 ;
typedef int IFilterMapper ;
typedef int IEnumRegFilters ;
typedef int IEnumMoniker ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef int CLSID ;
typedef int BYTE ;
typedef int BOOL ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_FilterMapper2 ;
 int CoCreateGuid (int *) ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 int FALSE ;
 int GUID_NULL ;
 int HKEY_CLASSES_ROOT ;
 int IEnumMoniker_Release (int *) ;
 scalar_t__ IEnumRegFilters_Next (int *,int,TYPE_1__**,int *) ;
 int IEnumRegFilters_Release (int *) ;
 scalar_t__ IFilterMapper2_EnumMatchingFilters (int *,int **,int ,int ,int ,int ,int ,int *,int *,int *,int ,int ,int ,int *,int *,int *) ;
 scalar_t__ IFilterMapper2_QueryInterface (int *,int *,void**) ;
 int IFilterMapper2_Release (int *) ;
 scalar_t__ IFilterMapper_EnumMatchingFilters (int *,int **,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ IFilterMapper_RegisterFilter (int *,int ,char const*,int ) ;
 scalar_t__ IFilterMapper_RegisterPin (int *,int ,char const*,int ,int ,int ,int ,int ,int *) ;
 scalar_t__ IFilterMapper_RegisterPinType (int *,int ,char const*,int ,int ) ;
 int IFilterMapper_Release (int *) ;
 scalar_t__ IFilterMapper_UnregisterFilter (int *,int ) ;
 int IID_IFilterMapper ;
 int IID_IFilterMapper2 ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int KEY_WRITE ;
 int MERIT_UNLIKELY ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,char*,int ,int *,int ,int ,int *,int *,int *) ;
 scalar_t__ RegDeleteKeyW (int ,char*) ;
 int RegSetValueExW (int ,int *,int ,int ,int *,int) ;
 scalar_t__ S_OK ;
 int StringFromGUID2 (int *,char*,int) ;
 int TRUE ;
 int enum_find_filter (char const*,int *) ;
 int lstrcatW (char*,char*) ;
 int lstrcmpW (int ,char const*) ;
 int lstrcpyW (char*,char const*) ;
 int ok (int,char*,...) ;
 int skip (char*) ;

__attribute__((used)) static void test_legacy_filter_registration(void)
{
    static const WCHAR testfilterW[] = {'T','e','s','t','f','i','l','t','e','r',0};
    static const WCHAR clsidW[] = {'C','L','S','I','D','\\',0};
    static const WCHAR pinW[] = {'P','i','n','1',0};
    IEnumRegFilters *enum_reg;
    IEnumMoniker *enum_mon;
    IFilterMapper2 *mapper2;
    IFilterMapper *mapper;
    REGFILTER *regfilter;
    WCHAR clsidstring[40];
    WCHAR key_name[50];
    ULONG count;
    CLSID clsid;
    LRESULT ret;
    HRESULT hr;
    BOOL found;
    HKEY hkey;



    CoCreateGuid(&clsid);
    StringFromGUID2(&clsid, clsidstring, sizeof(clsidstring));
    lstrcpyW(key_name, clsidW);
    lstrcatW(key_name, clsidstring);
    ret = RegCreateKeyExW(HKEY_CLASSES_ROOT, key_name, 0, ((void*)0), 0, KEY_WRITE, ((void*)0), &hkey, ((void*)0));
    if (ret == ERROR_ACCESS_DENIED)
    {
        skip("Not authorized to register filters\n");
        return;
    }




    hr = CoCreateInstance(&CLSID_FilterMapper2, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IFilterMapper2, (void **)&mapper2);
    ok(hr == S_OK, "CoCreateInstance failed with %x\n", hr);

    hr = IFilterMapper2_QueryInterface(mapper2, &IID_IFilterMapper, (void **)&mapper);
    ok(hr == S_OK, "IFilterMapper2_QueryInterface failed with %x\n", hr);


    RegSetValueExW(hkey, ((void*)0), 0, REG_SZ, (BYTE *)testfilterW, sizeof(testfilterW));
    RegCloseKey(hkey);

    hr = IFilterMapper_RegisterFilter(mapper, clsid, testfilterW, MERIT_UNLIKELY);
    ok(hr == S_OK, "RegisterFilter failed: %#x\n", hr);

    hr = IFilterMapper_RegisterPin(mapper, clsid, pinW, TRUE, FALSE, FALSE, FALSE, GUID_NULL, ((void*)0));
    ok(hr == S_OK, "RegisterPin failed: %#x\n", hr);

    hr = IFilterMapper_RegisterPinType(mapper, clsid, pinW, GUID_NULL, GUID_NULL);
    ok(hr == S_OK, "RegisterPinType failed: %#x\n", hr);

    hr = IFilterMapper2_EnumMatchingFilters(mapper2, &enum_mon, 0, TRUE, MERIT_UNLIKELY, TRUE,
            0, ((void*)0), ((void*)0), &GUID_NULL, FALSE, FALSE, 0, ((void*)0), ((void*)0), &GUID_NULL);
    ok(hr == S_OK, "IFilterMapper2_EnumMatchingFilters failed: %x\n", hr);
    ok(enum_find_filter(testfilterW, enum_mon), "IFilterMapper2 didn't find filter\n");
    IEnumMoniker_Release(enum_mon);

    found = FALSE;
    hr = IFilterMapper_EnumMatchingFilters(mapper, &enum_reg, MERIT_UNLIKELY, TRUE, GUID_NULL, GUID_NULL,
        FALSE, FALSE, GUID_NULL, GUID_NULL);
    ok(hr == S_OK, "IFilterMapper_EnumMatchingFilters failed with %x\n", hr);
    while(!found && IEnumRegFilters_Next(enum_reg, 1, &regfilter, &count) == S_OK)
    {
        if (!lstrcmpW(regfilter->Name, testfilterW) && IsEqualGUID(&clsid, &regfilter->Clsid))
            found = TRUE;
    }
    IEnumRegFilters_Release(enum_reg);
    ok(found, "IFilterMapper didn't find filter\n");

    hr = IFilterMapper_UnregisterFilter(mapper, clsid);
    ok(hr == S_OK, "FilterMapper_UnregisterFilter failed with %x\n", hr);

    hr = IFilterMapper2_EnumMatchingFilters(mapper2, &enum_mon, 0, TRUE, MERIT_UNLIKELY, TRUE,
            0, ((void*)0), ((void*)0), &GUID_NULL, FALSE, FALSE, 0, ((void*)0), ((void*)0), &GUID_NULL);
    ok(hr == S_OK, "IFilterMapper2_EnumMatchingFilters failed: %x\n", hr);
    ok(!enum_find_filter(testfilterW, enum_mon), "IFilterMapper2 shouldn't find filter\n");
    IEnumMoniker_Release(enum_mon);

    found = FALSE;
    hr = IFilterMapper_EnumMatchingFilters(mapper, &enum_reg, MERIT_UNLIKELY, TRUE, GUID_NULL, GUID_NULL,
        FALSE, FALSE, GUID_NULL, GUID_NULL);
    ok(hr == S_OK, "IFilterMapper_EnumMatchingFilters failed with %x\n", hr);
    while(!found && IEnumRegFilters_Next(enum_reg, 1, &regfilter, &count) == S_OK)
    {
        if (!lstrcmpW(regfilter->Name, testfilterW) && IsEqualGUID(&clsid, &regfilter->Clsid))
            found = TRUE;
    }
    IEnumRegFilters_Release(enum_reg);
    ok(!found, "IFilterMapper shouldn't find filter\n");

    ret = RegDeleteKeyW(HKEY_CLASSES_ROOT, key_name);
    ok(!ret, "RegDeleteKeyA failed: %lu\n", ret);

    hr = IFilterMapper_RegisterFilter(mapper, clsid, testfilterW, MERIT_UNLIKELY);
    ok(hr == S_OK, "RegisterFilter failed: %#x\n", hr);

    hr = IFilterMapper_UnregisterFilter(mapper, clsid);
    ok(hr == S_OK, "FilterMapper_UnregisterFilter failed with %x\n", hr);

    IFilterMapper_Release(mapper);
    IFilterMapper2_Release(mapper2);
}
