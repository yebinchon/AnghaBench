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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    IInternetZoneManager *zonemgr = NULL;
    HRESULT hr;
    DWORD dwEnum;
    DWORD dwCount;
    DWORD dwZone;
    DWORD i;

    FUNC7("testing GetZoneAt...\n");

    hr = FUNC6(NULL, &zonemgr, 0);
    FUNC5(hr == S_OK, "CoInternetCreateZoneManager result: 0x%x\n", hr);
    if (FUNC0(hr))
        return;

    hr = FUNC1(zonemgr, &dwEnum, &dwCount, 0);
    if (FUNC0(hr))
        goto cleanup;

    if (0) {
        /* this crashes with native urlmon */
        FUNC3(zonemgr, dwEnum, 0, NULL);
    }

    dwZone = 0xdeadbeef;
    hr = FUNC3(zonemgr, 0xdeadbeef, 0, &dwZone);
    FUNC5(hr == E_INVALIDARG,
        "got 0x%x with 0x%x (expected E_INVALIDARG)\n", hr, dwZone);

    for (i = 0; i < dwCount; i++)
    {
        dwZone = 0xdeadbeef;
        hr = FUNC3(zonemgr, dwEnum, i, &dwZone);
        FUNC5(hr == S_OK, "#%d: got x%x with %d (expected S_OK)\n", i, hr, dwZone);
    }

    dwZone = 0xdeadbeef;
    /* MSDN (index .. must be .. less than or equal to) is wrong */
    hr = FUNC3(zonemgr, dwEnum, dwCount, &dwZone);
    FUNC5(hr == E_INVALIDARG,
        "got 0x%x with 0x%x (expected E_INVALIDARG)\n", hr, dwZone);

    hr = FUNC2(zonemgr, dwEnum);
    FUNC5(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

cleanup:
    hr = FUNC4(zonemgr);
    FUNC5(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
}