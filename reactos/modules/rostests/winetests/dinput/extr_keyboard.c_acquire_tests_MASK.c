#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kbd_state ;
typedef  int /*<<< orphan*/  df ;
typedef  int /*<<< orphan*/  custom_state ;
typedef  int UINT ;
struct TYPE_4__ {int dwSize; int dwObjSize; int dwDataSize; int dwNumObjs; scalar_t__* rgodf; int /*<<< orphan*/  dwFlags; } ;
typedef  int /*<<< orphan*/  RAWINPUTDEVICE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IDirectInputDeviceA ;
typedef  int /*<<< orphan*/  IDirectInputA ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  HKL ;
typedef  scalar_t__ DIOBJECTDATAFORMAT ;
typedef  TYPE_1__ DIDATAFORMAT ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DIDFT_BUTTON ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIDF_RELAXIS ; 
 int DIERR_INVALIDPARAM ; 
 int DIERR_NOTACQUIRED ; 
 int /*<<< orphan*/  DIK_E ; 
 int /*<<< orphan*/  DIK_Q ; 
 int /*<<< orphan*/  DIK_R ; 
 int /*<<< orphan*/  DIK_W ; 
 int DISCL_BACKGROUND ; 
 int DISCL_NONEXCLUSIVE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  GUID_Key ; 
 int /*<<< orphan*/  GUID_SysKeyboard ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEYEVENTF_KEYUP ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int FUNC13 (int) ; 
 int S_FALSE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 
 TYPE_1__ c_dfDIKeyboard ; 
 int /*<<< orphan*/  FUNC18 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

__attribute__((used)) static void FUNC23(IDirectInputA *pDI, HWND hwnd)
{
    HRESULT hr;
    IDirectInputDeviceA *pKeyboard;
    BYTE kbd_state[256];
    LONG custom_state[6];
    int i;
    DIOBJECTDATAFORMAT dodf[] =
        {
            { &GUID_Key, sizeof(LONG) * 0, FUNC2(DIK_Q)|DIDFT_BUTTON, 0 },
            { &GUID_Key, sizeof(LONG) * 1, FUNC2(DIK_W)|DIDFT_BUTTON, 0 },
            { &GUID_Key, sizeof(LONG) * 2, FUNC2(DIK_E)|DIDFT_BUTTON, 0 },
            { &GUID_Key, sizeof(LONG) * 4, FUNC2(DIK_R)|DIDFT_BUTTON, 0 },
        };
    DIDATAFORMAT df;
    HKL hkl, hkl_orig;
    UINT prev_raw_devices_count, raw_devices_count;

    hkl = FUNC16(FUNC12(LANG_ENGLISH, SUBLANG_DEFAULT), &hkl_orig);
    if (!hkl) return;

    df.dwSize = sizeof( df );
    df.dwObjSize = sizeof( DIOBJECTDATAFORMAT );
    df.dwFlags = DIDF_RELAXIS;
    df.dwDataSize = sizeof( custom_state );
    df.dwNumObjs = FUNC0(dodf);
    df.rgodf = dodf;

    hr = FUNC10(pDI, &GUID_SysKeyboard, &pKeyboard, NULL);
    FUNC20(FUNC13(hr), "IDirectInput_CreateDevice() failed: %08x\n", hr);
    if (FUNC3(hr)) return;

    hr = FUNC8(pKeyboard, &c_dfDIKeyboard);
    FUNC20(FUNC13(hr), "IDirectInputDevice_SetDataFormat() failed: %08x\n", hr);
    hr = FUNC7(pKeyboard, NULL, DISCL_NONEXCLUSIVE | DISCL_BACKGROUND);
    FUNC20(FUNC13(hr), "IDirectInputDevice_SetCooperativeLevel() failed: %08x\n", hr);
    hr = FUNC6(pKeyboard, 10, kbd_state);
    FUNC20(hr == DIERR_NOTACQUIRED, "IDirectInputDevice_GetDeviceState(10,) should have failed: %08x\n", hr);
    hr = FUNC6(pKeyboard, sizeof(kbd_state), kbd_state);
    FUNC20(hr == DIERR_NOTACQUIRED, "IDirectInputDevice_GetDeviceState() should have failed: %08x\n", hr);
    hr = FUNC9(pKeyboard);
    FUNC20(hr == S_FALSE, "IDirectInputDevice_Unacquire() should have failed: %08x\n", hr);
    hr = FUNC5(pKeyboard);
    FUNC20(FUNC13(hr), "IDirectInputDevice_Acquire() failed: %08x\n", hr);
    hr = FUNC5(pKeyboard);
    FUNC20(hr == S_FALSE, "IDirectInputDevice_Acquire() should have failed: %08x\n", hr);
    hr = FUNC6(pKeyboard, 10, kbd_state);
    FUNC20(hr == DIERR_INVALIDPARAM, "IDirectInputDevice_GetDeviceState(10,) should have failed: %08x\n", hr);
    hr = FUNC6(pKeyboard, sizeof(kbd_state), kbd_state);
    FUNC20(FUNC13(hr), "IDirectInputDevice_GetDeviceState() failed: %08x\n", hr);
    hr = FUNC9(pKeyboard);
    FUNC20(FUNC13(hr), "IDirectInputDevice_Uncquire() failed: %08x\n", hr);
    hr = FUNC8( pKeyboard , &df );
    FUNC20(FUNC13(hr), "IDirectInputDevice_SetDataFormat() failed: %08x\n", hr);
    hr = FUNC5(pKeyboard);
    FUNC20(FUNC13(hr), "IDirectInputDevice_Acquire() failed: %08x\n", hr);
    hr = FUNC6(pKeyboard, sizeof(custom_state), custom_state);
    FUNC20(FUNC13(hr), "IDirectInputDevice_GetDeviceState(4,) failed: %08x\n", hr);
    hr = FUNC6(pKeyboard, sizeof(kbd_state), kbd_state);
    FUNC20(hr == DIERR_INVALIDPARAM, "IDirectInputDevice_GetDeviceState(256,) should have failed: %08x\n", hr);

    FUNC19(custom_state, 0x56, sizeof(custom_state));
    FUNC6(pKeyboard, sizeof(custom_state), custom_state);
    for (i = 0; i < FUNC0(custom_state); i++)
        FUNC20(custom_state[i] == 0, "Should be zeroed, got 0x%08x\n", custom_state[i]);

    /* simulate some keyboard input */
    FUNC14(hwnd);
    FUNC21();

    FUNC18('Q', 0, 0, 0);
    hr = FUNC6(pKeyboard, sizeof(custom_state), custom_state);
    FUNC20(FUNC13(hr), "IDirectInputDevice_GetDeviceState() failed: %08x\n", hr);
    if (!custom_state[0])
        FUNC22("Keyboard event not processed, skipping test\n");
    else
    {
        /* unacquiring should reset the device state */
        hr = FUNC9(pKeyboard);
        FUNC20(FUNC13(hr), "IDirectInputDevice_Unacquire() failed: %08x\n", hr);
        hr = FUNC5(pKeyboard);
        FUNC20(FUNC13(hr), "IDirectInputDevice_Acquire() failed: %08x\n", hr);
        hr = FUNC6(pKeyboard, sizeof(custom_state), custom_state);
        FUNC20(FUNC13(hr), "IDirectInputDevice_GetDeviceState failed: %08x\n", hr);
        for (i = 0; i < FUNC0(custom_state); i++)
            FUNC20(custom_state[i] == 0, "Should be zeroed, got 0x%08x\n", custom_state[i]);
    }
    FUNC18('Q', 0, KEYEVENTF_KEYUP, 0);

    prev_raw_devices_count = 0;
    FUNC4(NULL, &prev_raw_devices_count, sizeof(RAWINPUTDEVICE));
    FUNC20(prev_raw_devices_count == 0 || FUNC17(prev_raw_devices_count == 1) /* wxppro, w2003std */,
       "Unexpected raw devices registered: %d\n", prev_raw_devices_count);

    hr = FUNC5(pKeyboard);
    FUNC20(FUNC13(hr), "IDirectInputDevice_Acquire() failed: %08x\n", hr);

    raw_devices_count = 0;
    FUNC4(NULL, &raw_devices_count, sizeof(RAWINPUTDEVICE));
    FUNC20(raw_devices_count == prev_raw_devices_count,
       "Unexpected raw devices registered: %d\n", raw_devices_count);

    hr = FUNC9(pKeyboard);
    FUNC20(FUNC13(hr), "IDirectInputDevice_Unacquire() failed: %08x\n", hr);

    if (pKeyboard) FUNC11(pKeyboard);

    FUNC1(hkl_orig, 0);
    FUNC15(hkl);
}