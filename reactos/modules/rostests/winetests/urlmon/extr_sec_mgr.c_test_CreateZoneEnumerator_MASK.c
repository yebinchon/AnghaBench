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
typedef  int /*<<< orphan*/  IInternetZoneManager ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    IInternetZoneManager *zonemgr = NULL;
    HRESULT hr;
    DWORD dwEnum;
    DWORD dwEnum2;
    DWORD dwCount;
    DWORD dwCount2;

    FUNC7("testing zone enumerator...\n");

    hr = FUNC6(NULL, &zonemgr, 0);
    FUNC5(hr == S_OK, "CoInternetCreateZoneManager result: 0x%x\n", hr);
    if (FUNC0(hr))
        return;

    dwEnum=0xdeadbeef;
    hr = FUNC1(zonemgr, &dwEnum, NULL, 0);
    FUNC5((hr == E_INVALIDARG) && (dwEnum == 0xdeadbeef),
        "got 0x%x with 0x%x (expected E_INVALIDARG with 0xdeadbeef)\n", hr, dwEnum);

    dwCount=0xdeadbeef;
    hr = FUNC1(zonemgr, NULL, &dwCount, 0);
    FUNC5((hr == E_INVALIDARG) && (dwCount == 0xdeadbeef),
        "got 0x%x and 0x%x (expected E_INVALIDARG and 0xdeadbeef)\n", hr, dwCount);

    dwEnum=0xdeadbeef;
    dwCount=0xdeadbeef;
    hr = FUNC1(zonemgr, &dwEnum, &dwCount, 0xffffffff);
    FUNC5((hr == E_INVALIDARG) && (dwEnum == 0xdeadbeef) && (dwCount == 0xdeadbeef),
        "got 0x%x with 0x%x and 0x%x (expected E_INVALIDARG with 0xdeadbeef and 0xdeadbeef)\n",
        hr, dwEnum, dwCount);

    dwEnum=0xdeadbeef;
    dwCount=0xdeadbeef;
    hr = FUNC1(zonemgr, &dwEnum, &dwCount, 1);
    FUNC5((hr == E_INVALIDARG) && (dwEnum == 0xdeadbeef) && (dwCount == 0xdeadbeef),
        "got 0x%x with 0x%x and 0x%x (expected E_INVALIDARG with 0xdeadbeef and 0xdeadbeef)\n",
        hr, dwEnum, dwCount);

    dwEnum=0xdeadbeef;
    dwCount=0xdeadbeef;
    /* Normal use */
    hr = FUNC1(zonemgr, &dwEnum, &dwCount, 0);
    FUNC5(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

    if (FUNC4(hr)) {
        dwEnum2=0xdeadbeef;
        dwCount2=0xdeadbeef;
        hr = FUNC1(zonemgr, &dwEnum2, &dwCount2, 0);
        FUNC5(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
        if (FUNC4(hr)) {
            /* native urlmon has an incrementing counter for dwEnum */
            hr = FUNC2(zonemgr, dwEnum2);
            FUNC5(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
        }

        hr = FUNC2(zonemgr, dwEnum);
        FUNC5(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

        /* Destroy the Enumerator twice is detected and handled in native urlmon */
        hr = FUNC2(zonemgr, dwEnum);
        FUNC5((hr == E_INVALIDARG), "got 0x%x (expected E_INVALIDARG)\n", hr);
    }

    /* ::Release succeed also, when a ::DestroyZoneEnumerator is missing */
    hr = FUNC3(zonemgr);
    FUNC5(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
}