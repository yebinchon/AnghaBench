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
struct property_test {scalar_t__ vt; int /*<<< orphan*/  prop; } ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IDxDiagContainer ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(IDxDiagContainer *container, const struct property_test *property_tests, size_t len)
{
    HRESULT hr;

    /* Check that the container has no properties if there are no properties to examine. */
    if (len == 0)
    {
        DWORD prop_count;

        hr = FUNC0(container, &prop_count);
        FUNC6(hr == S_OK, "Expected IDxDiagContainer::GetNumberOfProps to return S_OK, got 0x%08x\n", hr);
        if (hr == S_OK)
            FUNC6(prop_count == 0, "Expected container property count to be zero, got %u\n", prop_count);
    }
    else
    {
        VARIANT var;
        int i;

        FUNC4(&var);

        /* Examine the variant types of obtained property values. */
        for (i = 0; i < len; i++)
        {
            hr = FUNC1(container, property_tests[i].prop, &var);
            FUNC6(hr == S_OK, "[%d] Expected IDxDiagContainer::GetProp to return S_OK for %s, got 0x%08x\n",
               i, FUNC8(property_tests[i].prop), hr);

            if (hr == S_OK)
            {
                FUNC6(FUNC2(&var) == property_tests[i].vt,
                   "[%d] Expected variant type %d, got %d\n", i, property_tests[i].vt, FUNC2(&var));
                FUNC7("%s = %s\n", FUNC8(property_tests[i].prop), FUNC5(&var));
                FUNC3(&var);
            }
        }
    }
}