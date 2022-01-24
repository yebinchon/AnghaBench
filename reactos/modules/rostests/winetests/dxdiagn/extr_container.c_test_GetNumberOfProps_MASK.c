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
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  pddc ; 
 int /*<<< orphan*/  pddp ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HRESULT hr;
    DWORD count;

    if (!FUNC3())
    {
        FUNC5("Unable to create the root IDxDiagContainer\n");
        return;
    }

    hr = FUNC0(pddc, NULL);
    FUNC4(hr == E_INVALIDARG, "Expected IDxDiagContainer::GetNumberOfProps to return E_INVALIDARG, got 0x%08x\n", hr);

    hr = FUNC0(pddc, &count);
    FUNC4(hr == S_OK, "Expected IDxDiagContainer::GetNumberOfProps to return S_OK, got 0x%08x\n", hr);
    if (hr == S_OK)
        FUNC4(count == 0, "Expected the number of properties for the root container to be zero\n");

    FUNC1(pddc);
    FUNC2(pddp);
}