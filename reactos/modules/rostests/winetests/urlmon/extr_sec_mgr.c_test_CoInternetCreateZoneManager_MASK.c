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
typedef  int /*<<< orphan*/  IInternetZoneManager ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IInternetZoneManager ; 
 int /*<<< orphan*/  IID_IInternetZoneManagerEx ; 
 int /*<<< orphan*/  IID_IInternetZoneManagerEx2 ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    IInternetZoneManager *zonemgr = NULL;
    IUnknown *punk = NULL;
    HRESULT hr;

    FUNC8("simple zone manager tests...\n");

    hr = FUNC7(NULL, &zonemgr, 0);
    FUNC6(hr == S_OK, "CoInternetCreateZoneManager result: 0x%x\n", hr);
    if (FUNC0(hr))
        return;

    hr = FUNC1(zonemgr, &IID_IUnknown, (void **) &punk);
    FUNC6(FUNC4(hr), "got 0x%x with %p (expected Success)\n", hr, punk);
    if (punk)
        FUNC3(punk);

    hr = FUNC1(zonemgr, &IID_IInternetZoneManager, (void **) &punk);
    FUNC6(FUNC4(hr), "got 0x%x with %p (expected Success)\n", hr, punk);
    if (punk)
        FUNC3(punk);


    hr = FUNC1(zonemgr, &IID_IInternetZoneManagerEx, (void **) &punk);
    if (FUNC4(hr)) {
        FUNC3(punk);

        hr = FUNC1(zonemgr, &IID_IInternetZoneManagerEx2, (void **) &punk);
        FUNC6(hr == S_OK || FUNC5(hr == E_NOINTERFACE /* some W2K3 */),
           "got 0x%x (expected S_OK)\n", hr);
        if (punk)
            FUNC3(punk);
        else
            FUNC9("InternetZoneManagerEx2 not supported\n");

    }
    else
        FUNC9("InternetZoneManagerEx not supported\n");

    hr = FUNC2(zonemgr);
    FUNC6(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

}