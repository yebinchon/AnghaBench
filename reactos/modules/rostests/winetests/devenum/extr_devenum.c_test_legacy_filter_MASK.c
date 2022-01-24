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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IPropertyBag ;
typedef  int /*<<< orphan*/  IParseDisplayName ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IFilterMapper ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CHARS_IN_GUID ; 
 int /*<<< orphan*/  CLSCTX_INPROC ; 
 int /*<<< orphan*/  CLSID_CDeviceMoniker ; 
 int /*<<< orphan*/  CLSID_FilterMapper2 ; 
 int /*<<< orphan*/  CLSID_LegacyAmFilterCategory ; 
 int /*<<< orphan*/  CLSID_TestFilter ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IFilterMapper ; 
 int /*<<< orphan*/  IID_IParseDisplayName ; 
 int /*<<< orphan*/  IID_IPropertyBag ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ VFW_E_BAD_KEY ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  backslashW ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  clsidW ; 
 int /*<<< orphan*/  cmW ; 
 int /*<<< orphan*/  deviceW ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  friendly_name ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

__attribute__((used)) static void FUNC22(void)
{
    static const WCHAR nameW[] = {'t','e','s','t',0};
    IParseDisplayName *parser;
    IPropertyBag *prop_bag;
    IFilterMapper *mapper;
    IMoniker *mon;
    WCHAR buffer[200];
    VARIANT var;
    HRESULT hr;

    hr = FUNC0(&CLSID_CDeviceMoniker, NULL, CLSCTX_INPROC, &IID_IParseDisplayName, (void **)&parser);
    FUNC19(hr == S_OK, "Failed to create ParseDisplayName: %#x\n", hr);

    hr = FUNC0(&CLSID_FilterMapper2, NULL, CLSCTX_INPROC, &IID_IFilterMapper, (void **)&mapper);
    FUNC19(hr == S_OK, "Failed to create FilterMapper: %#x\n", hr);

    hr = FUNC1(mapper, CLSID_TestFilter, nameW, 0xdeadbeef);
    if (hr == VFW_E_BAD_KEY)
    {
        FUNC20("not enough permissions to register filters\n");
        goto end;
    }
    FUNC19(hr == S_OK, "RegisterFilter failed: %#x\n", hr);

    FUNC17(buffer, deviceW);
    FUNC15(buffer, cmW);
    FUNC9(&CLSID_LegacyAmFilterCategory, buffer + FUNC18(buffer), CHARS_IN_GUID);
    FUNC15(buffer, backslashW);
    FUNC9(&CLSID_TestFilter, buffer + FUNC18(buffer), CHARS_IN_GUID);

    mon = FUNC13(parser, buffer);
    FUNC19(FUNC14(&CLSID_LegacyAmFilterCategory, mon), "filter should be registered\n");

    hr = FUNC4(mon, NULL, NULL, &IID_IPropertyBag, (void **)&prop_bag);
    FUNC19(hr == S_OK, "BindToStorage failed: %#x\n", hr);

    FUNC12(&var);
    hr = FUNC7(prop_bag, friendly_name, &var, NULL);
    FUNC19(hr == S_OK, "Read failed: %#x\n", hr);

    FUNC9(&CLSID_TestFilter, buffer, CHARS_IN_GUID);
    FUNC19(!FUNC16(buffer, FUNC10(&var)), "expected %s, got %s\n",
        FUNC21(buffer), FUNC21(FUNC10(&var)));

    FUNC11(&var);
    hr = FUNC7(prop_bag, clsidW, &var, NULL);
    FUNC19(hr == S_OK, "Read failed: %#x\n", hr);
    FUNC19(!FUNC16(buffer, FUNC10(&var)), "expected %s, got %s\n",
        FUNC21(buffer), FUNC21(FUNC10(&var)));

    FUNC11(&var);
    FUNC8(prop_bag);

    hr = FUNC3(mapper, CLSID_TestFilter);
    FUNC19(hr == S_OK, "UnregisterFilter failed: %#x\n", hr);

    FUNC19(!FUNC14(&CLSID_LegacyAmFilterCategory, mon), "filter should not be registered\n");
    FUNC5(mon);

end:
    FUNC2(mapper);
    FUNC6(parser);
}