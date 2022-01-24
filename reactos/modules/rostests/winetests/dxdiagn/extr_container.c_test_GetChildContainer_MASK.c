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
typedef  void IDxDiagContainer ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*,void*,...) ; 
 void* pddc ; 
 int /*<<< orphan*/  pddp ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    HRESULT hr;
    WCHAR container[256] = {0};
    IDxDiagContainer *child;

    if (!FUNC7())
    {
        FUNC9("Unable to create the root IDxDiagContainer\n");
        return;
    }

    /* Test various combinations of invalid parameters. */
    hr = FUNC3(pddc, NULL, NULL);
    FUNC8(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::GetChildContainer to return E_INVALIDARG, got 0x%08x\n", hr);

    child = (void*)0xdeadbeef;
    hr = FUNC3(pddc, NULL, &child);
    FUNC8(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::GetChildContainer to return E_INVALIDARG, got 0x%08x\n", hr);
    FUNC8(child == (void*)0xdeadbeef, "Expected output pointer to be unchanged, got %p\n", child);

    hr = FUNC3(pddc, container, NULL);
    FUNC8(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::GetChildContainer to return E_INVALIDARG, got 0x%08x\n", hr);

    child = (void*)0xdeadbeef;
    hr = FUNC3(pddc, container, &child);
    FUNC8(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::GetChildContainer to return E_INVALIDARG, got 0x%08x\n", hr);
    FUNC8(child == NULL, "Expected output pointer to be NULL, got %p\n", child);

    /* Get the name of a suitable child container. */
    hr = FUNC2(pddc, 0, container, FUNC0(container));
    FUNC8(hr == S_OK,
       "Expected IDxDiagContainer::EnumChildContainerNames to return S_OK, got 0x%08x\n", hr);
    if (FUNC1(hr))
    {
        FUNC9("IDxDiagContainer::EnumChildContainerNames failed\n");
        goto cleanup;
    }

    child = (void*)0xdeadbeef;
    hr = FUNC3(pddc, container, &child);
    FUNC8(hr == S_OK,
       "Expected IDxDiagContainer::GetChildContainer to return S_OK, got 0x%08x\n", hr);
    FUNC8(child != NULL && child != (void*)0xdeadbeef, "Expected a valid output pointer, got %p\n", child);

    if (FUNC6(hr))
    {
        IDxDiagContainer *ptr;

        /* Show that IDxDiagContainer::GetChildContainer returns a different pointer
         * for multiple calls for the same container name. */
        hr = FUNC3(pddc, container, &ptr);
        FUNC8(hr == S_OK,
           "Expected IDxDiagContainer::GetChildContainer to return S_OK, got 0x%08x\n", hr);
        if (FUNC6(hr))
            FUNC8(ptr != child, "Expected the two pointers (%p vs. %p) to be unequal\n", child, ptr);

        FUNC4(ptr);
        FUNC4(child);
    }

cleanup:
    FUNC4(pddc);
    FUNC5(pddp);
}