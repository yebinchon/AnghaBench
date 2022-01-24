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

/* Variables and functions */
 int /*<<< orphan*/  COINIT_APARTMENTTHREADED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
    HRESULT hr;

    hr = FUNC4(NULL, COINIT_APARTMENTTHREADED);
    FUNC3(hr == S_OK, "CoInitializeEx failed with error 0x%08x\n", hr);

    /* Calling OleInitialize for the first time should yield S_OK even with
     * apartment already initialized by previous CoInitialize(Ex) calls. */
    hr = FUNC1(NULL);
    FUNC3(hr == S_OK, "OleInitialize failed with error 0x%08x\n", hr);

    /* Subsequent calls to OleInitialize should return S_FALSE */
    hr = FUNC1(NULL);
    FUNC3(hr == S_FALSE, "Expected S_FALSE, hr = 0x%08x\n", hr);

    /* Cleanup */
    FUNC0();
    FUNC2();
    FUNC2();
}