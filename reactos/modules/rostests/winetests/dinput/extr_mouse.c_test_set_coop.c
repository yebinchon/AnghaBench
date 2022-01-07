
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDirectInputDeviceA ;
typedef int IDirectInputA ;
typedef int * HWND ;
typedef scalar_t__ HRESULT ;


 int * CreateWindowA (char*,char*,int,int,int,int,int,int *,int *,int *,int *) ;
 int DestroyWindow (int *) ;
 scalar_t__ FAILED (scalar_t__) ;
 int GUID_SysMouse ;
 int GetLastError () ;
 scalar_t__ IDirectInputDevice_SetCooperativeLevel (int *,int *,int) ;
 scalar_t__ IDirectInput_CreateDevice (int *,int *,int **,int *) ;
 int IUnknown_Release (int *) ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__* SetCoop_child_window ;
 scalar_t__* SetCoop_null_window ;
 scalar_t__* SetCoop_real_window ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_set_coop(IDirectInputA *pDI, HWND hwnd)
{
    HRESULT hr;
    IDirectInputDeviceA *pMouse = ((void*)0);
    int i;
    HWND child;

    hr = IDirectInput_CreateDevice(pDI, &GUID_SysMouse, &pMouse, ((void*)0));
    ok(SUCCEEDED(hr), "IDirectInput_CreateDevice() failed: %08x\n", hr);
    if (FAILED(hr)) return;

    for (i=0; i<16; i++)
    {
        hr = IDirectInputDevice_SetCooperativeLevel(pMouse, ((void*)0), i);
        ok(hr == SetCoop_null_window[i], "SetCooperativeLevel(NULL, %d): %08x\n", i, hr);
    }
    for (i=0; i<16; i++)
    {
        hr = IDirectInputDevice_SetCooperativeLevel(pMouse, hwnd, i);
        ok(hr == SetCoop_real_window[i], "SetCooperativeLevel(hwnd, %d): %08x\n", i, hr);
    }

    child = CreateWindowA("static", "Title", WS_CHILD | WS_VISIBLE, 10, 10, 50, 50, hwnd, ((void*)0),
                          ((void*)0), ((void*)0));
    ok(child != ((void*)0), "err: %d\n", GetLastError());

    for (i=0; i<16; i++)
    {
        hr = IDirectInputDevice_SetCooperativeLevel(pMouse, child, i);
        ok(hr == SetCoop_child_window[i], "SetCooperativeLevel(child, %d): %08x\n", i, hr);
    }

    DestroyWindow(child);
    if (pMouse) IUnknown_Release(pMouse);
}
