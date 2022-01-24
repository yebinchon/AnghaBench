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
typedef  int /*<<< orphan*/  mouse_state ;
typedef  int /*<<< orphan*/  m_state ;
typedef  int /*<<< orphan*/  di_op ;
struct TYPE_5__ {int dwSize; int dwHeaderSize; int dwObj; int /*<<< orphan*/  dwHow; } ;
struct TYPE_4__ {int dwData; TYPE_3__ diph; } ;
typedef  int /*<<< orphan*/  LPCDIPROPHEADER ;
typedef  int /*<<< orphan*/  IDirectInputDeviceA ;
typedef  int /*<<< orphan*/  IDirectInputA ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  DIPROPHEADER ;
typedef  TYPE_1__ DIPROPDWORD ;
typedef  int /*<<< orphan*/  DIMOUSESTATE ;
typedef  int /*<<< orphan*/  DIDEVICEOBJECTDATA ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int DIDFT_RELAXIS ; 
 scalar_t__ DIERR_NOTACQUIRED ; 
 scalar_t__ DIERR_OTHERAPPHASPRIO ; 
 int DIMOFS_Y ; 
 int /*<<< orphan*/  DIPH_BYID ; 
 int /*<<< orphan*/  DIPH_BYOFFSET ; 
 int /*<<< orphan*/  DIPH_DEVICE ; 
 int /*<<< orphan*/  DIPROP_BUFFERSIZE ; 
 int /*<<< orphan*/  DIPROP_GRANULARITY ; 
 int DISCL_FOREGROUND ; 
 int DISCL_NONEXCLUSIVE ; 
 scalar_t__ DI_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  GUID_SysMouse ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MOUSEEVENTF_MOVE ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WS_VISIBLE ; 
 int /*<<< orphan*/  c_dfDIMouse ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  winetest_interactive ; 

__attribute__((used)) static void FUNC22(IDirectInputA *pDI, HWND hwnd)
{
    HRESULT hr;
    IDirectInputDeviceA *pMouse = NULL;
    DIMOUSESTATE m_state;
    HWND hwnd2;
    DIPROPDWORD di_op;
    DIDEVICEOBJECTDATA mouse_state;
    DWORD cnt;
    int i;

    if (! FUNC17(hwnd))
    {
        FUNC21("Not running as foreground app, skipping acquire tests\n");
        return;
    }

    hr = FUNC13(pDI, &GUID_SysMouse, &pMouse, NULL);
    FUNC20(FUNC15(hr), "IDirectInput_CreateDevice() failed: %08x\n", hr);
    if (FUNC3(hr)) return;

    hr = FUNC9(pMouse, hwnd, DISCL_NONEXCLUSIVE | DISCL_FOREGROUND);
    FUNC20(hr == S_OK, "SetCooperativeLevel: %08x\n", hr);

    FUNC18(&di_op, 0, sizeof(di_op));
    di_op.dwData = 5;
    di_op.diph.dwHow = DIPH_DEVICE;
    di_op.diph.dwSize = sizeof(DIPROPDWORD);
    di_op.diph.dwHeaderSize = sizeof(DIPROPHEADER);
    hr = FUNC11(pMouse, DIPROP_BUFFERSIZE, (LPCDIPROPHEADER)&di_op);
    FUNC20(hr == S_OK, "SetProperty() failed: %08x\n", hr);

    hr = FUNC10(pMouse, &c_dfDIMouse);
    FUNC20(FUNC15(hr), "IDirectInputDevice_SetDataFormat() failed: %08x\n", hr);
    hr = FUNC12(pMouse);
    FUNC20(hr == S_FALSE, "IDirectInputDevice_Unacquire() should have failed: %08x\n", hr);
    hr = FUNC5(pMouse);
    FUNC20(FUNC15(hr), "IDirectInputDevice_Acquire() failed: %08x\n", hr);
    hr = FUNC5(pMouse);
    FUNC20(hr == S_FALSE, "IDirectInputDevice_Acquire() should have failed: %08x\n", hr);

    /* Foreground coop level requires window to have focus */
    /* Create a temporary window, this should make dinput
     * lose mouse input */
    hwnd2 = FUNC0("static", "Temporary", WS_VISIBLE, 10, 210, 200, 200, NULL, NULL, NULL,
                          NULL);
    FUNC20(hwnd2 != NULL, "CreateWindowA failed with %u\n", FUNC4());

    hr = FUNC7(pMouse, sizeof(m_state), &m_state);
    FUNC20(hr == DIERR_NOTACQUIRED, "GetDeviceState() should have failed: %08x\n", hr);

    hr = FUNC5(pMouse);
    FUNC20(hr == DIERR_OTHERAPPHASPRIO, "Acquire() should have failed: %08x\n", hr);

    FUNC16( hwnd );
    hr = FUNC5(pMouse);
    FUNC20(hr == S_OK, "Acquire() failed: %08x\n", hr);

if (!winetest_interactive)
    FUNC21("ROSTESTS-176/CORE-9710: Skipping randomly failing tests\n");
else {

    FUNC19(MOUSEEVENTF_MOVE, 10, 10, 0, 0);
    cnt = 1;
    hr = FUNC6(pMouse, sizeof(mouse_state), &mouse_state, &cnt, 0);
    FUNC20(hr == S_OK && cnt > 0, "GetDeviceData() failed: %08x cnt:%d\n", hr, cnt);

    FUNC19(MOUSEEVENTF_MOVE, 10, 10, 0, 0);
    hr = FUNC12(pMouse);
    FUNC20(hr == S_OK, "Failed: %08x\n", hr);
    cnt = 1;
    hr = FUNC6(pMouse, sizeof(mouse_state), &mouse_state, &cnt, 0);
    FUNC20(hr == S_OK && cnt > 0, "GetDeviceData() failed: %08x cnt:%d\n", hr, cnt);

    hr = FUNC5(pMouse);
    FUNC20(hr == S_OK, "Failed: %08x\n", hr);
    FUNC19(MOUSEEVENTF_MOVE, 10, 10, 0, 0);
    hr = FUNC12(pMouse);
    FUNC20(hr == S_OK, "Failed: %08x\n", hr);

    hr = FUNC5(pMouse);
    FUNC20(hr == S_OK, "Failed: %08x\n", hr);
    cnt = 1;
    hr = FUNC6(pMouse, sizeof(mouse_state), &mouse_state, &cnt, 0);
    FUNC20(hr == S_OK && cnt > 0, "GetDeviceData() failed: %08x cnt:%d\n", hr, cnt);

    /* Check for buffer overflow */
    for (i = 0; i < 6; i++)
        FUNC19(MOUSEEVENTF_MOVE, 10 + i, 10 + i, 0, 0);

    cnt = 1;
    hr = FUNC6(pMouse, sizeof(mouse_state), &mouse_state, &cnt, 0);
    FUNC20(hr == DI_OK, "GetDeviceData() failed: %08x cnt:%d\n", hr, cnt);
    cnt = 1;
    hr = FUNC6(pMouse, sizeof(mouse_state), &mouse_state, &cnt, 0);
    FUNC20(hr == DI_OK && cnt == 1, "GetDeviceData() failed: %08x cnt:%d\n", hr, cnt);

    /* Check for granularity property using BYOFFSET */
    FUNC18(&di_op, 0, sizeof(di_op));
    di_op.diph.dwHow = DIPH_BYOFFSET;
    di_op.diph.dwObj = DIMOFS_Y;
    di_op.diph.dwSize = sizeof(DIPROPDWORD);
    di_op.diph.dwHeaderSize = sizeof(DIPROPHEADER);
    hr = FUNC8(pMouse, DIPROP_GRANULARITY, &di_op.diph);
    /* Granularity of Y axis should be 1! */
    FUNC20(hr == S_OK && di_op.dwData == 1, "GetProperty(): %08x, dwData: %i but should be 1.\n", hr, di_op.dwData);

    /* Check for granularity property using BYID */
    FUNC18(&di_op, 0, sizeof(di_op));
    di_op.diph.dwHow = DIPH_BYID;
    /* WINE_MOUSE_Y_AXIS_INSTANCE := 1 */
    di_op.diph.dwObj = (FUNC1(1) | DIDFT_RELAXIS);
    di_op.diph.dwSize = sizeof(DIPROPDWORD);
    di_op.diph.dwHeaderSize = sizeof(DIPROPHEADER);
    hr = FUNC8(pMouse, DIPROP_GRANULARITY, &di_op.diph);
    /* Granularity of Y axis should be 1! */
    FUNC20(hr == S_OK && di_op.dwData == 1, "GetProperty(): %08x, dwData: %i but should be 1.\n", hr, di_op.dwData);
}
    if (pMouse) FUNC14(pMouse);

    FUNC2( hwnd2 );
}