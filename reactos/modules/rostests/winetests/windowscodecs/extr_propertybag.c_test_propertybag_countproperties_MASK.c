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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IPropertyBag2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(IPropertyBag2 *property, ULONG expected_count)
{
    ULONG count = (ULONG)-1;
    HRESULT hr;

    hr = FUNC1(property, NULL);
    FUNC2(hr == E_INVALIDARG, "CountProperties returned unexpected result, hr=%x\n", hr);

    hr = FUNC1(property, &count);
    FUNC2(hr == S_OK, "CountProperties failed, hr=%x\n", hr);

    if (FUNC0(hr))
        return;

    FUNC2(count == expected_count, "CountProperties returned invalid value, count=%i\n", count);
}