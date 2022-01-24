#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  diprg ;
struct TYPE_5__ {int dwSize; int dwHeaderSize; scalar_t__ dwObj; int /*<<< orphan*/  dwHow; } ;
struct TYPE_4__ {TYPE_3__ diph; } ;
typedef  int /*<<< orphan*/  IDirectInputDeviceA ;
typedef  int /*<<< orphan*/  IDirectInputA ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ DIPROPRANGE ;
typedef  int /*<<< orphan*/  DIPROPHEADER ;

/* Variables and functions */
 scalar_t__ DIERR_UNSUPPORTED ; 
 int /*<<< orphan*/  DIPH_DEVICE ; 
 int /*<<< orphan*/  DIPROP_RANGE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GUID_SysKeyboard ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(IDirectInputA *pDI, HWND hwnd)
{
    HRESULT hr;
    IDirectInputDeviceA *pKeyboard = NULL;
    DIPROPRANGE diprg;

    hr = FUNC2(pDI, &GUID_SysKeyboard, &pKeyboard, NULL);
    FUNC6(FUNC4(hr), "IDirectInput_CreateDevice() failed: %08x\n", hr);
    if (FUNC0(hr)) return;

    FUNC5(&diprg, 0, sizeof(diprg));
    diprg.diph.dwSize       = sizeof(DIPROPRANGE);
    diprg.diph.dwHeaderSize = sizeof(DIPROPHEADER);
    diprg.diph.dwHow        = DIPH_DEVICE;
    diprg.diph.dwObj        = 0;

    hr = FUNC1(pKeyboard, DIPROP_RANGE, &diprg.diph);
    FUNC6(hr == DIERR_UNSUPPORTED, "IDirectInputDevice_GetProperty() did not return DIPROP_RANGE but: %08x\n", hr);

    if (pKeyboard) FUNC3(pKeyboard);
}