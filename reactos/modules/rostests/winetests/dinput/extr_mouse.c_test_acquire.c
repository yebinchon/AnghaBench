
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mouse_state ;
typedef int m_state ;
typedef int di_op ;
struct TYPE_5__ {int dwSize; int dwHeaderSize; int dwObj; int dwHow; } ;
struct TYPE_4__ {int dwData; TYPE_3__ diph; } ;
typedef int LPCDIPROPHEADER ;
typedef int IDirectInputDeviceA ;
typedef int IDirectInputA ;
typedef int * HWND ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int DIPROPHEADER ;
typedef TYPE_1__ DIPROPDWORD ;
typedef int DIMOUSESTATE ;
typedef int DIDEVICEOBJECTDATA ;


 int * CreateWindowA (char*,char*,int ,int,int,int,int,int *,int *,int *,int *) ;
 int DIDFT_MAKEINSTANCE (int) ;
 int DIDFT_RELAXIS ;
 scalar_t__ DIERR_NOTACQUIRED ;
 scalar_t__ DIERR_OTHERAPPHASPRIO ;
 int DIMOFS_Y ;
 int DIPH_BYID ;
 int DIPH_BYOFFSET ;
 int DIPH_DEVICE ;
 int DIPROP_BUFFERSIZE ;
 int DIPROP_GRANULARITY ;
 int DISCL_FOREGROUND ;
 int DISCL_NONEXCLUSIVE ;
 scalar_t__ DI_OK ;
 int DestroyWindow (int *) ;
 scalar_t__ FAILED (scalar_t__) ;
 int GUID_SysMouse ;
 int GetLastError () ;
 scalar_t__ IDirectInputDevice_Acquire (int *) ;
 scalar_t__ IDirectInputDevice_GetDeviceData (int *,int,int *,int*,int ) ;
 scalar_t__ IDirectInputDevice_GetDeviceState (int *,int,int *) ;
 scalar_t__ IDirectInputDevice_GetProperty (int *,int ,TYPE_3__*) ;
 scalar_t__ IDirectInputDevice_SetCooperativeLevel (int *,int *,int) ;
 scalar_t__ IDirectInputDevice_SetDataFormat (int *,int *) ;
 scalar_t__ IDirectInputDevice_SetProperty (int *,int ,int ) ;
 scalar_t__ IDirectInputDevice_Unacquire (int *) ;
 scalar_t__ IDirectInput_CreateDevice (int *,int *,int **,int *) ;
 int IUnknown_Release (int *) ;
 int MOUSEEVENTF_MOVE ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int SetActiveWindow (int *) ;
 int SetForegroundWindow (int *) ;
 int WS_VISIBLE ;
 int c_dfDIMouse ;
 int memset (TYPE_1__*,int ,int) ;
 int mouse_event (int ,int,int,int ,int ) ;
 int ok (int,char*,scalar_t__,...) ;
 int skip (char*) ;
 int winetest_interactive ;

__attribute__((used)) static void test_acquire(IDirectInputA *pDI, HWND hwnd)
{
    HRESULT hr;
    IDirectInputDeviceA *pMouse = ((void*)0);
    DIMOUSESTATE m_state;
    HWND hwnd2;
    DIPROPDWORD di_op;
    DIDEVICEOBJECTDATA mouse_state;
    DWORD cnt;
    int i;

    if (! SetForegroundWindow(hwnd))
    {
        skip("Not running as foreground app, skipping acquire tests\n");
        return;
    }

    hr = IDirectInput_CreateDevice(pDI, &GUID_SysMouse, &pMouse, ((void*)0));
    ok(SUCCEEDED(hr), "IDirectInput_CreateDevice() failed: %08x\n", hr);
    if (FAILED(hr)) return;

    hr = IDirectInputDevice_SetCooperativeLevel(pMouse, hwnd, DISCL_NONEXCLUSIVE | DISCL_FOREGROUND);
    ok(hr == S_OK, "SetCooperativeLevel: %08x\n", hr);

    memset(&di_op, 0, sizeof(di_op));
    di_op.dwData = 5;
    di_op.diph.dwHow = DIPH_DEVICE;
    di_op.diph.dwSize = sizeof(DIPROPDWORD);
    di_op.diph.dwHeaderSize = sizeof(DIPROPHEADER);
    hr = IDirectInputDevice_SetProperty(pMouse, DIPROP_BUFFERSIZE, (LPCDIPROPHEADER)&di_op);
    ok(hr == S_OK, "SetProperty() failed: %08x\n", hr);

    hr = IDirectInputDevice_SetDataFormat(pMouse, &c_dfDIMouse);
    ok(SUCCEEDED(hr), "IDirectInputDevice_SetDataFormat() failed: %08x\n", hr);
    hr = IDirectInputDevice_Unacquire(pMouse);
    ok(hr == S_FALSE, "IDirectInputDevice_Unacquire() should have failed: %08x\n", hr);
    hr = IDirectInputDevice_Acquire(pMouse);
    ok(SUCCEEDED(hr), "IDirectInputDevice_Acquire() failed: %08x\n", hr);
    hr = IDirectInputDevice_Acquire(pMouse);
    ok(hr == S_FALSE, "IDirectInputDevice_Acquire() should have failed: %08x\n", hr);




    hwnd2 = CreateWindowA("static", "Temporary", WS_VISIBLE, 10, 210, 200, 200, ((void*)0), ((void*)0), ((void*)0),
                          ((void*)0));
    ok(hwnd2 != ((void*)0), "CreateWindowA failed with %u\n", GetLastError());

    hr = IDirectInputDevice_GetDeviceState(pMouse, sizeof(m_state), &m_state);
    ok(hr == DIERR_NOTACQUIRED, "GetDeviceState() should have failed: %08x\n", hr);

    hr = IDirectInputDevice_Acquire(pMouse);
    ok(hr == DIERR_OTHERAPPHASPRIO, "Acquire() should have failed: %08x\n", hr);

    SetActiveWindow( hwnd );
    hr = IDirectInputDevice_Acquire(pMouse);
    ok(hr == S_OK, "Acquire() failed: %08x\n", hr);

if (!winetest_interactive)
    skip("ROSTESTS-176/CORE-9710: Skipping randomly failing tests\n");
else {

    mouse_event(MOUSEEVENTF_MOVE, 10, 10, 0, 0);
    cnt = 1;
    hr = IDirectInputDevice_GetDeviceData(pMouse, sizeof(mouse_state), &mouse_state, &cnt, 0);
    ok(hr == S_OK && cnt > 0, "GetDeviceData() failed: %08x cnt:%d\n", hr, cnt);

    mouse_event(MOUSEEVENTF_MOVE, 10, 10, 0, 0);
    hr = IDirectInputDevice_Unacquire(pMouse);
    ok(hr == S_OK, "Failed: %08x\n", hr);
    cnt = 1;
    hr = IDirectInputDevice_GetDeviceData(pMouse, sizeof(mouse_state), &mouse_state, &cnt, 0);
    ok(hr == S_OK && cnt > 0, "GetDeviceData() failed: %08x cnt:%d\n", hr, cnt);

    hr = IDirectInputDevice_Acquire(pMouse);
    ok(hr == S_OK, "Failed: %08x\n", hr);
    mouse_event(MOUSEEVENTF_MOVE, 10, 10, 0, 0);
    hr = IDirectInputDevice_Unacquire(pMouse);
    ok(hr == S_OK, "Failed: %08x\n", hr);

    hr = IDirectInputDevice_Acquire(pMouse);
    ok(hr == S_OK, "Failed: %08x\n", hr);
    cnt = 1;
    hr = IDirectInputDevice_GetDeviceData(pMouse, sizeof(mouse_state), &mouse_state, &cnt, 0);
    ok(hr == S_OK && cnt > 0, "GetDeviceData() failed: %08x cnt:%d\n", hr, cnt);


    for (i = 0; i < 6; i++)
        mouse_event(MOUSEEVENTF_MOVE, 10 + i, 10 + i, 0, 0);

    cnt = 1;
    hr = IDirectInputDevice_GetDeviceData(pMouse, sizeof(mouse_state), &mouse_state, &cnt, 0);
    ok(hr == DI_OK, "GetDeviceData() failed: %08x cnt:%d\n", hr, cnt);
    cnt = 1;
    hr = IDirectInputDevice_GetDeviceData(pMouse, sizeof(mouse_state), &mouse_state, &cnt, 0);
    ok(hr == DI_OK && cnt == 1, "GetDeviceData() failed: %08x cnt:%d\n", hr, cnt);


    memset(&di_op, 0, sizeof(di_op));
    di_op.diph.dwHow = DIPH_BYOFFSET;
    di_op.diph.dwObj = DIMOFS_Y;
    di_op.diph.dwSize = sizeof(DIPROPDWORD);
    di_op.diph.dwHeaderSize = sizeof(DIPROPHEADER);
    hr = IDirectInputDevice_GetProperty(pMouse, DIPROP_GRANULARITY, &di_op.diph);

    ok(hr == S_OK && di_op.dwData == 1, "GetProperty(): %08x, dwData: %i but should be 1.\n", hr, di_op.dwData);


    memset(&di_op, 0, sizeof(di_op));
    di_op.diph.dwHow = DIPH_BYID;

    di_op.diph.dwObj = (DIDFT_MAKEINSTANCE(1) | DIDFT_RELAXIS);
    di_op.diph.dwSize = sizeof(DIPROPDWORD);
    di_op.diph.dwHeaderSize = sizeof(DIPROPHEADER);
    hr = IDirectInputDevice_GetProperty(pMouse, DIPROP_GRANULARITY, &di_op.diph);

    ok(hr == S_OK && di_op.dwData == 1, "GetProperty(): %08x, dwData: %i but should be 1.\n", hr, di_op.dwData);
}
    if (pMouse) IUnknown_Release(pMouse);

    DestroyWindow( hwnd2 );
}
