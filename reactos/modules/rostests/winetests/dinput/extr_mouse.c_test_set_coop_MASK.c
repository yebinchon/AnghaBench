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
typedef  int /*<<< orphan*/  IDirectInputDeviceA ;
typedef  int /*<<< orphan*/  IDirectInputA ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*,int,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  GUID_SysMouse ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__* SetCoop_child_window ; 
 scalar_t__* SetCoop_null_window ; 
 scalar_t__* SetCoop_real_window ; 
 int WS_CHILD ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC9(IDirectInputA *pDI, HWND hwnd)
{
    HRESULT hr;
    IDirectInputDeviceA *pMouse = NULL;
    int i;
    HWND child;

    hr = FUNC5(pDI, &GUID_SysMouse, &pMouse, NULL);
    FUNC8(FUNC7(hr), "IDirectInput_CreateDevice() failed: %08x\n", hr);
    if (FUNC2(hr)) return;

    for (i=0; i<16; i++)
    {
        hr = FUNC4(pMouse, NULL, i);
        FUNC8(hr == SetCoop_null_window[i], "SetCooperativeLevel(NULL, %d): %08x\n", i, hr);
    }
    for (i=0; i<16; i++)
    {
        hr = FUNC4(pMouse, hwnd, i);
        FUNC8(hr == SetCoop_real_window[i], "SetCooperativeLevel(hwnd, %d): %08x\n", i, hr);
    }

    child = FUNC0("static", "Title", WS_CHILD | WS_VISIBLE, 10, 10, 50, 50, hwnd, NULL,
                          NULL, NULL);
    FUNC8(child != NULL, "err: %d\n", FUNC3());

    for (i=0; i<16; i++)
    {
        hr = FUNC4(pMouse, child, i);
        FUNC8(hr == SetCoop_child_window[i], "SetCooperativeLevel(child, %d): %08x\n", i, hr);
    }

    FUNC1(child);
    if (pMouse) FUNC6(pMouse);
}