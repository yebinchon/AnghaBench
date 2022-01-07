
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int caps ;
struct TYPE_3__ {int dwSize; int dwFlags; int dwDevType; } ;
typedef int IDirectInputDeviceA ;
typedef int IDirectInputA ;
typedef int HWND ;
typedef int HRESULT ;
typedef TYPE_1__ DIDEVCAPS ;


 int DIDC_ATTACHED ;
 int DIDEVTYPEKEYBOARD_JAPAN106 ;
 int DIDEVTYPEKEYBOARD_PCENH ;
 int DIDEVTYPEKEYBOARD_UNKNOWN ;
 scalar_t__ DIDEVTYPE_KEYBOARD ;
 scalar_t__ FAILED (int ) ;
 int GET_DIDEVICE_SUBTYPE (int ) ;
 scalar_t__ GET_DIDEVICE_TYPE (int ) ;
 int GUID_SysKeyboard ;
 int GetKeyboardType (int) ;
 int IDirectInputDevice_GetCapabilities (int *,TYPE_1__*) ;
 int IDirectInput_CreateDevice (int *,int *,int **,int *) ;
 int IUnknown_Release (int *) ;
 int SUCCEEDED (int ) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_capabilities(IDirectInputA *pDI, HWND hwnd)
{
    HRESULT hr;
    IDirectInputDeviceA *pKeyboard = ((void*)0);
    DIDEVCAPS caps;
    int kbd_type, kbd_subtype, dev_subtype;

    hr = IDirectInput_CreateDevice(pDI, &GUID_SysKeyboard, &pKeyboard, ((void*)0));
    ok(SUCCEEDED(hr), "IDirectInput_CreateDevice() failed: %08x\n", hr);
    if (FAILED(hr)) return;

    caps.dwSize = sizeof(caps);
    hr = IDirectInputDevice_GetCapabilities(pKeyboard, &caps);

    ok (SUCCEEDED(hr), "GetCapabilities failed: 0x%08x\n", hr);
    ok (caps.dwFlags & DIDC_ATTACHED, "GetCapabilities dwFlags: 0x%08x\n", caps.dwFlags);
    ok (GET_DIDEVICE_TYPE(caps.dwDevType) == DIDEVTYPE_KEYBOARD,
        "GetCapabilities invalid device type for dwDevType: 0x%08x\n", caps.dwDevType);
    kbd_type = GetKeyboardType(0);
    kbd_subtype = GetKeyboardType(1);
    dev_subtype = GET_DIDEVICE_SUBTYPE(caps.dwDevType);
    if (kbd_type == 4 || (kbd_type == 7 && kbd_subtype == 0))
        ok (dev_subtype == DIDEVTYPEKEYBOARD_PCENH,
            "GetCapabilities invalid device subtype for dwDevType: 0x%08x (%04x:%04x)\n",
            caps.dwDevType, kbd_type, kbd_subtype);
    else if (kbd_type == 7 && kbd_subtype == 2)
        ok (dev_subtype == DIDEVTYPEKEYBOARD_JAPAN106,
            "GetCapabilities invalid device subtype for dwDevType: 0x%08x (%04x:%04x)\n",
            caps.dwDevType, kbd_type, kbd_subtype);
    else
        ok (dev_subtype != DIDEVTYPEKEYBOARD_UNKNOWN,
            "GetCapabilities invalid device subtype for dwDevType: 0x%08x (%04x:%04x)\n",
            caps.dwDevType, kbd_type, kbd_subtype);

    IUnknown_Release(pKeyboard);
}
