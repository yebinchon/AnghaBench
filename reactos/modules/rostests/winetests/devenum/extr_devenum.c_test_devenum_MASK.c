#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  void* LPVOID ;
typedef  int /*<<< orphan*/  IPropertyBag ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IEnumMoniker ;
typedef  int /*<<< orphan*/  ICreateDevEnum ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLSID_ActiveMovieCategories ; 
 int /*<<< orphan*/  CLSID_CDeviceMoniker ; 
 int /*<<< orphan*/  CLSID_SystemDeviceEnum ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_KEY_DOES_NOT_EXIST ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_ICreateDevEnum ; 
 int /*<<< orphan*/  IID_IPropertyBag ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clsidW ; 
 int /*<<< orphan*/  friendly_name ; 
 int /*<<< orphan*/  FUNC19 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC23(IBindCtx *bind_ctx)
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

    hr = FUNC1(&CLSID_SystemDeviceEnum, NULL, CLSCTX_INPROC,
                           &IID_ICreateDevEnum, (LPVOID*)&create_devenum);
    FUNC19(hr == S_OK, "Failed to create devenum: %#x\n", hr);

    hr = FUNC3(create_devenum, &CLSID_ActiveMovieCategories, &enum_cat, 0);
    FUNC19(hr == S_OK, "Failed to enum categories: %#x\n", hr);

    while (FUNC5(enum_cat, 1, &moniker, NULL) == S_OK)
    {
        hr = FUNC8(moniker, bind_ctx, NULL, &IID_IPropertyBag, (void **)&prop_bag);
        FUNC19(hr == S_OK, "IMoniker_BindToStorage failed: %#x\n", hr);

        FUNC18(&var);
        hr = FUNC12(prop_bag, clsidW, &var, NULL);
        FUNC19(hr == S_OK, "Failed to read CLSID: %#x\n", hr);

        hr = FUNC0(FUNC16(&var), &cat_guid);
        FUNC19(hr == S_OK, "got %#x\n", hr);

        FUNC17(&var);
        hr = FUNC12(prop_bag, friendly_name, &var, NULL);
        FUNC19(hr == S_OK, "Failed to read FriendlyName: %#x\n", hr);

        if (winetest_debug > 1)
            FUNC20("%s %s:\n", FUNC21(&cat_guid), FUNC22(FUNC16(&var)));

        FUNC17(&var);
        FUNC13(prop_bag);
        FUNC11(moniker);

        hr = FUNC3(create_devenum, &cat_guid, &enum_moniker, 0);
        FUNC19(FUNC15(hr), "Failed to enum devices: %#x\n", hr);

        if (hr == S_OK)
        {
            count = 0;

            while (FUNC5(enum_moniker, 1, &moniker, NULL) == S_OK)
            {
                hr = FUNC10(moniker, NULL, NULL, &displayname);
                FUNC19(hr == S_OK, "got %#x\n", hr);

                hr = FUNC9(moniker, NULL);
                FUNC19(hr == E_INVALIDARG, "IMoniker_GetClassID should failed %x\n", hr);

                hr = FUNC9(moniker, &clsid);
                FUNC19(hr == S_OK, "IMoniker_GetClassID failed with error %x\n", hr);
                FUNC19(FUNC14(&clsid, &CLSID_CDeviceMoniker),
                   "Expected CLSID_CDeviceMoniker got %s\n", FUNC21(&clsid));

                FUNC18(&var);
                hr = FUNC8(moniker, bind_ctx, NULL, &IID_IPropertyBag, (LPVOID*)&prop_bag);
                FUNC19(hr == S_OK, "IMoniker_BindToStorage failed with error %x\n", hr);

                hr = FUNC12(prop_bag, friendly_name, &var, NULL);
                FUNC19((hr == S_OK) | (hr == ERROR_KEY_DOES_NOT_EXIST),
					"IPropertyBag_Read failed: %#x\n", hr);

                if (winetest_debug > 1)
                    FUNC20("  %s %s\n", FUNC22(displayname), FUNC22(FUNC16(&var)));

                hr = FUNC7(moniker, bind_ctx, NULL, &IID_IUnknown, NULL);
                FUNC19(hr == E_POINTER, "got %#x\n", hr);

                FUNC17(&var);
                FUNC2(displayname);
                FUNC13(prop_bag);
                FUNC11(moniker);
                count++;
            }
            FUNC6(enum_moniker);

            FUNC19(count > 0, "CreateClassEnumerator() returned S_OK but no devices were enumerated.\n");
        }
    }

    FUNC6(enum_cat);
    FUNC4(create_devenum);
}