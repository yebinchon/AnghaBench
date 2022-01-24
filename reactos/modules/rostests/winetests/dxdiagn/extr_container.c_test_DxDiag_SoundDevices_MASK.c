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
struct property_test {char const* member_0; int /*<<< orphan*/  const member_1; } ;
typedef  int /*<<< orphan*/  property_tests ;
typedef  int /*<<< orphan*/  child_container ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IDxDiagContainer ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 char const* DxDiag_SoundDevices ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
#define  VT_BSTR 128 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/ * pddc ; 
 int /*<<< orphan*/  pddp ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct property_test const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    static const WCHAR szDescription[] = {'s','z','D','e','s','c','r','i','p','t','i','o','n',0};
    static const WCHAR szGuidDeviceID[] = {'s','z','G','u','i','d','D','e','v','i','c','e','I','D',0};
    static const WCHAR szDriverPath[] = {'s','z','D','r','i','v','e','r','P','a','t','h',0};
    static const WCHAR szDriverName[] = {'s','z','D','r','i','v','e','r','N','a','m','e',0};
    static const WCHAR empty[] = {0};

    static const struct property_test property_tests[] =
    {
        {szDescription, VT_BSTR},
        {szGuidDeviceID, VT_BSTR},
        {szDriverName, VT_BSTR},
        {szDriverPath, VT_BSTR},
    };

    IDxDiagContainer *sound_cont = NULL;
    DWORD count, i;
    HRESULT hr;

    if (!FUNC6())
    {
        FUNC8("Unable to create the root IDxDiagContainer\n");
        return;
    }

    hr = FUNC1(pddc, DxDiag_SoundDevices, &sound_cont);
    FUNC7(hr == S_OK, "Expected IDxDiagContainer::GetChildContainer to return S_OK, got 0x%08x\n", hr);

    if (hr != S_OK)
        goto cleanup;

    hr = FUNC3(sound_cont, &count);
    FUNC7(hr == S_OK, "Expected IDxDiagContainer::GetNumberOfProps to return S_OK, got 0x%08x\n", hr);
    if (hr == S_OK)
        FUNC7(count == 0, "Expected count to be 0, got %u\n", count);

    hr = FUNC2(sound_cont, &count);
    FUNC7(hr == S_OK, "Expected IDxDiagContainer::GetNumberOfChildContainers to return S_OK, got 0x%08x\n", hr);

    if (hr != S_OK)
        goto cleanup;

    for (i = 0; i < count; i++)
    {
        WCHAR child_container[256];
        IDxDiagContainer *child, *child2;

        hr = FUNC0(sound_cont, i, child_container, sizeof(child_container)/sizeof(WCHAR));
        FUNC7(hr == S_OK, "Expected IDxDiagContainer::EnumChildContainerNames to return S_OK, got 0x%08x\n", hr);

        hr = FUNC1(sound_cont, child_container, &child);
        FUNC7(hr == S_OK, "Expected IDxDiagContainer::GetChildContainer to return S_OK, got 0x%08x\n", hr);

        if (hr == S_OK)
        {
            FUNC10("Testing container %s\n", FUNC11(child_container));
            FUNC9(child, property_tests, sizeof(property_tests)/sizeof(property_tests[0]));
        }

        child2 = NULL;
        hr = FUNC1(child, empty, &child2);
        FUNC7(hr == S_OK, "Expected IDxDiagContainer::GetChildContainer to return S_OK, got 0x%08x\n", hr);
        FUNC7(child2 != NULL, "Expected child2 != NULL\n");
        FUNC7(child2 != child, "Expected child != child2\n");
        if (hr == S_OK) FUNC4(child2);

        FUNC4(child);
    }

cleanup:
    if (sound_cont) FUNC4(sound_cont);
    FUNC4(pddc);
    FUNC5(pddp);
}