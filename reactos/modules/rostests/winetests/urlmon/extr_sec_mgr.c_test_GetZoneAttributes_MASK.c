#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_3__ {int cbSize; } ;
typedef  TYPE_1__ ZONEATTRIBUTES ;
typedef  int /*<<< orphan*/  IInternetZoneManager ;
typedef  int HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int E_FAIL ; 
 int E_INVALIDARG ; 
 int E_POINTER ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    IInternetZoneManager *zonemgr = NULL;
    CHAR buffer [sizeof(ZONEATTRIBUTES) + 32];
    ZONEATTRIBUTES* pZA = (ZONEATTRIBUTES*) buffer;
    HRESULT hr;
    DWORD i;

    FUNC6("testing GetZoneAttributes...\n");

    hr = FUNC5(NULL, &zonemgr, 0);
    FUNC4(hr == S_OK, "CoInternetCreateZoneManager result: 0x%x\n", hr);
    if (FUNC0(hr))
        return;

    /* native urlmon has Zone "0" up to Zone "4" since IE4 */
    for (i = 0; i < 5; i++) {
        FUNC3(buffer, -1, sizeof(buffer));
        hr = FUNC1(zonemgr, i, pZA);
        FUNC4(hr == S_OK, "#%d: got 0x%x (expected S_OK)\n", i, hr);
    }

    /* IE8 no longer set cbSize */
    FUNC3(buffer, -1, sizeof(buffer));
    pZA->cbSize = 0;
    hr = FUNC1(zonemgr, 0, pZA);
    FUNC4(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
    FUNC4((pZA->cbSize == 0) || (pZA->cbSize == sizeof(ZONEATTRIBUTES)),
        "got cbSize = %d (expected 0)\n", pZA->cbSize);

    FUNC3(buffer, -1, sizeof(buffer));
    pZA->cbSize = 64;
    hr = FUNC1(zonemgr, 0, pZA);
    FUNC4(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
    FUNC4((pZA->cbSize == 64) || (pZA->cbSize == sizeof(ZONEATTRIBUTES)),
        "got cbSize = %d (expected 64)\n", pZA->cbSize);

    FUNC3(buffer, -1, sizeof(buffer));
    hr = FUNC1(zonemgr, 0, pZA);
    FUNC4(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
    FUNC4((pZA->cbSize == 0xffffffff) || (pZA->cbSize == sizeof(ZONEATTRIBUTES)),
        "got cbSize = 0x%x (expected 0xffffffff)\n", pZA->cbSize);

    /* IE8 up to IE10 don't fail on invalid zones */
    FUNC3(buffer, -1, sizeof(buffer));
    hr = FUNC1(zonemgr, 0xdeadbeef, pZA);
    FUNC4(hr == S_OK || hr == E_FAIL || hr == E_POINTER,
        "got 0x%x (expected S_OK or E_FAIL)\n", hr);

    hr = FUNC1(zonemgr, 0, NULL);
    FUNC4(hr == E_INVALIDARG, "got 0x%x (expected E_INVALIDARG)\n", hr);

    hr = FUNC2(zonemgr);
    FUNC4(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
}