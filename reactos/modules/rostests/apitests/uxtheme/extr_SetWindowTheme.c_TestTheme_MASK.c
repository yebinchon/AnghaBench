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
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HTHEME ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

void FUNC3(HWND hwnd)
{
    HRESULT hr;
    HTHEME htheme1, htheme2;

    hr = FUNC1(hwnd, NULL, NULL);
    FUNC2 (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    htheme1 = FUNC0(hwnd, L"Toolbar");
    FUNC2 (htheme1 != NULL, "OpenThemeData failed\n");

    hr = FUNC1(hwnd, L"", L"");
    FUNC2 (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    htheme2 = FUNC0(hwnd, L"Toolbar");
    FUNC2 (htheme2 == NULL, "Expected OpenThemeData to fail\n");

    hr = FUNC1(hwnd, L"TrayNotify", L"");
    FUNC2 (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    htheme2 = FUNC0(hwnd, L"Toolbar");
    FUNC2 (htheme2 == NULL, "Expected OpenThemeData to fail\n");

    hr = FUNC1(hwnd, L"TrayNotify", NULL);
    FUNC2 (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    htheme2 = FUNC0(hwnd, L"Toolbar");
    FUNC2 (htheme2 != NULL, "OpenThemeData failed\n");

    FUNC2(htheme1 != htheme2, "Expected different theme data\n");
}