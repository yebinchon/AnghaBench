#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  testfilterW ;
typedef  int /*<<< orphan*/  clsidstring ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  Clsid; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ REGFILTER ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  IFilterMapper2 ;
typedef  int /*<<< orphan*/  IFilterMapper ;
typedef  int /*<<< orphan*/  IEnumRegFilters ;
typedef  int /*<<< orphan*/  IEnumMoniker ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_FilterMapper2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IFilterMapper ; 
 int /*<<< orphan*/  IID_IFilterMapper2 ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  MERIT_UNLIKELY ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC20 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC24 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

__attribute__((used)) static void FUNC26(void)
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

    /* Register* functions need a filter class key to write pin and pin media
     * type data to. Create a bogus class key for it. */
    FUNC0(&clsid);
    FUNC19(&clsid, clsidstring, sizeof(clsidstring));
    FUNC23(key_name, clsidW);
    FUNC21(key_name, clsidstring);
    ret = FUNC16(HKEY_CLASSES_ROOT, key_name, 0, NULL, 0, KEY_WRITE, NULL, &hkey, NULL);
    if (ret == ERROR_ACCESS_DENIED)
    {
        FUNC25("Not authorized to register filters\n");
        return;
    }

    /* Test if legacy filter registration scheme works (filter is added to HKCR\Filter). IFilterMapper_RegisterFilter
     * registers in this way. Filters so registered must then be accessible through both IFilterMapper_EnumMatchingFilters
     * and IFilterMapper2_EnumMatchingFilters. */
    hr = FUNC1(&CLSID_FilterMapper2, NULL, CLSCTX_INPROC_SERVER, &IID_IFilterMapper2, (void **)&mapper2);
    FUNC24(hr == S_OK, "CoCreateInstance failed with %x\n", hr);

    hr = FUNC6(mapper2, &IID_IFilterMapper, (void **)&mapper);
    FUNC24(hr == S_OK, "IFilterMapper2_QueryInterface failed with %x\n", hr);

    /* Set default value - this is interpreted as "friendly name" later. */
    FUNC18(hkey, NULL, 0, REG_SZ, (BYTE *)testfilterW, sizeof(testfilterW));
    FUNC15(hkey);

    hr = FUNC9(mapper, clsid, testfilterW, MERIT_UNLIKELY);
    FUNC24(hr == S_OK, "RegisterFilter failed: %#x\n", hr);

    hr = FUNC10(mapper, clsid, pinW, TRUE, FALSE, FALSE, FALSE, GUID_NULL, NULL);
    FUNC24(hr == S_OK, "RegisterPin failed: %#x\n", hr);

    hr = FUNC11(mapper, clsid, pinW, GUID_NULL, GUID_NULL);
    FUNC24(hr == S_OK, "RegisterPinType failed: %#x\n", hr);

    hr = FUNC5(mapper2, &enum_mon, 0, TRUE, MERIT_UNLIKELY, TRUE,
            0, NULL, NULL, &GUID_NULL, FALSE, FALSE, 0, NULL, NULL, &GUID_NULL);
    FUNC24(hr == S_OK, "IFilterMapper2_EnumMatchingFilters failed: %x\n", hr);
    FUNC24(FUNC20(testfilterW, enum_mon), "IFilterMapper2 didn't find filter\n");
    FUNC2(enum_mon);

    found = FALSE;
    hr = FUNC8(mapper, &enum_reg, MERIT_UNLIKELY, TRUE, GUID_NULL, GUID_NULL,
        FALSE, FALSE, GUID_NULL, GUID_NULL);
    FUNC24(hr == S_OK, "IFilterMapper_EnumMatchingFilters failed with %x\n", hr);
    while(!found && FUNC3(enum_reg, 1, &regfilter, &count) == S_OK)
    {
        if (!FUNC22(regfilter->Name, testfilterW) && FUNC14(&clsid, &regfilter->Clsid))
            found = TRUE;
    }
    FUNC4(enum_reg);
    FUNC24(found, "IFilterMapper didn't find filter\n");

    hr = FUNC13(mapper, clsid);
    FUNC24(hr == S_OK, "FilterMapper_UnregisterFilter failed with %x\n", hr);

    hr = FUNC5(mapper2, &enum_mon, 0, TRUE, MERIT_UNLIKELY, TRUE,
            0, NULL, NULL, &GUID_NULL, FALSE, FALSE, 0, NULL, NULL, &GUID_NULL);
    FUNC24(hr == S_OK, "IFilterMapper2_EnumMatchingFilters failed: %x\n", hr);
    FUNC24(!FUNC20(testfilterW, enum_mon), "IFilterMapper2 shouldn't find filter\n");
    FUNC2(enum_mon);

    found = FALSE;
    hr = FUNC8(mapper, &enum_reg, MERIT_UNLIKELY, TRUE, GUID_NULL, GUID_NULL,
        FALSE, FALSE, GUID_NULL, GUID_NULL);
    FUNC24(hr == S_OK, "IFilterMapper_EnumMatchingFilters failed with %x\n", hr);
    while(!found && FUNC3(enum_reg, 1, &regfilter, &count) == S_OK)
    {
        if (!FUNC22(regfilter->Name, testfilterW) && FUNC14(&clsid, &regfilter->Clsid))
            found = TRUE;
    }
    FUNC4(enum_reg);
    FUNC24(!found, "IFilterMapper shouldn't find filter\n");

    ret = FUNC17(HKEY_CLASSES_ROOT, key_name);
    FUNC24(!ret, "RegDeleteKeyA failed: %lu\n", ret);

    hr = FUNC9(mapper, clsid, testfilterW, MERIT_UNLIKELY);
    FUNC24(hr == S_OK, "RegisterFilter failed: %#x\n", hr);

    hr = FUNC13(mapper, clsid);
    FUNC24(hr == S_OK, "FilterMapper_UnregisterFilter failed with %x\n", hr);

    FUNC12(mapper);
    FUNC7(mapper2);
}