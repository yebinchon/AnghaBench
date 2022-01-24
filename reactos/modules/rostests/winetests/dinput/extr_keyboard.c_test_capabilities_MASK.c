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
typedef  int /*<<< orphan*/  caps ;
struct TYPE_3__ {int dwSize; int dwFlags; int /*<<< orphan*/  dwDevType; } ;
typedef  int /*<<< orphan*/  IDirectInputDeviceA ;
typedef  int /*<<< orphan*/  IDirectInputA ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DIDEVCAPS ;

/* Variables and functions */
 int DIDC_ATTACHED ; 
 int DIDEVTYPEKEYBOARD_JAPAN106 ; 
 int DIDEVTYPEKEYBOARD_PCENH ; 
 int DIDEVTYPEKEYBOARD_UNKNOWN ; 
 scalar_t__ DIDEVTYPE_KEYBOARD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GUID_SysKeyboard ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC9(IDirectInputA *pDI, HWND hwnd)
{
    HRESULT hr;
    IDirectInputDeviceA *pKeyboard = NULL;
    DIDEVCAPS caps;
    int kbd_type, kbd_subtype, dev_subtype;

    hr = FUNC5(pDI, &GUID_SysKeyboard, &pKeyboard, NULL);
    FUNC8(FUNC7(hr), "IDirectInput_CreateDevice() failed: %08x\n", hr);
    if (FUNC0(hr)) return;

    caps.dwSize = sizeof(caps);
    hr = FUNC4(pKeyboard, &caps);

    FUNC8 (FUNC7(hr), "GetCapabilities failed: 0x%08x\n", hr);
    FUNC8 (caps.dwFlags & DIDC_ATTACHED, "GetCapabilities dwFlags: 0x%08x\n", caps.dwFlags);
    FUNC8 (FUNC2(caps.dwDevType) == DIDEVTYPE_KEYBOARD,
        "GetCapabilities invalid device type for dwDevType: 0x%08x\n", caps.dwDevType);
    kbd_type = FUNC3(0);
    kbd_subtype = FUNC3(1);
    dev_subtype = FUNC1(caps.dwDevType);
    if (kbd_type == 4 || (kbd_type == 7 && kbd_subtype == 0))
        FUNC8 (dev_subtype == DIDEVTYPEKEYBOARD_PCENH,
            "GetCapabilities invalid device subtype for dwDevType: 0x%08x (%04x:%04x)\n",
            caps.dwDevType, kbd_type, kbd_subtype);
    else if (kbd_type == 7 && kbd_subtype == 2)
        FUNC8 (dev_subtype == DIDEVTYPEKEYBOARD_JAPAN106,
            "GetCapabilities invalid device subtype for dwDevType: 0x%08x (%04x:%04x)\n",
            caps.dwDevType, kbd_type, kbd_subtype);
    else
        FUNC8 (dev_subtype != DIDEVTYPEKEYBOARD_UNKNOWN,
            "GetCapabilities invalid device subtype for dwDevType: 0x%08x (%04x:%04x)\n",
            caps.dwDevType, kbd_type, kbd_subtype);

    FUNC6(pKeyboard);
}