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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ICorDebug ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_ICorDebug ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ManagedCallback ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  v2_0 ; 

__attribute__((used)) static void FUNC9(void)
{
    HRESULT hr;
    IUnknown *pUnk;
    ICorDebug *pCorDebug;

    hr = FUNC7(0, v2_0, &pUnk);
    FUNC6(hr == E_INVALIDARG, "CreateDebuggingInterfaceFromVersion returned %08x\n", hr);

    hr = FUNC7(1, v2_0, &pUnk);
    FUNC6(hr == E_INVALIDARG, "CreateDebuggingInterfaceFromVersion returned %08x\n", hr);

    hr = FUNC7(2, v2_0, &pUnk);
    FUNC6(hr == E_INVALIDARG, "CreateDebuggingInterfaceFromVersion returned %08x\n", hr);

    hr = FUNC7(4, v2_0, &pUnk);
    FUNC6(hr == E_INVALIDARG, "CreateDebuggingInterfaceFromVersion returned %08x\n", hr);

    hr = FUNC7(3, v2_0, NULL);
    FUNC6(hr == E_INVALIDARG, "CreateDebuggingInterfaceFromVersion returned %08x\n", hr);

    hr = FUNC7(3, v2_0, &pUnk);
    if(hr == S_OK)
    {
        hr = FUNC3(pUnk, &IID_ICorDebug, (void**)&pCorDebug);
        FUNC6(hr == S_OK, "expected S_OK got %08x\n", hr);
        if(hr == S_OK)
        {
            hr = FUNC0(pCorDebug);
            FUNC6(hr == S_OK, "expected S_OK got %08x\n", hr);
            if(hr == S_OK)
            {
                hr = FUNC2(pCorDebug, NULL);
                FUNC6(hr == E_INVALIDARG, "expected E_INVALIDARG got %08x\n", hr);

                hr = FUNC2(pCorDebug, &ManagedCallback);
                FUNC6(hr == S_OK, "expected S_OK got %08x\n", hr);

                /* We should have no processes */
                FUNC5(pCorDebug, 0);
            }

            FUNC1(pCorDebug);
        }
        FUNC4(pUnk);
    }
    else
    {
        FUNC8(".NET 2.0 or mono not installed.\n");
    }
}