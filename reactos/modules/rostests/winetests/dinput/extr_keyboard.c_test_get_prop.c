
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int diprg ;
struct TYPE_5__ {int dwSize; int dwHeaderSize; scalar_t__ dwObj; int dwHow; } ;
struct TYPE_4__ {TYPE_3__ diph; } ;
typedef int IDirectInputDeviceA ;
typedef int IDirectInputA ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ DIPROPRANGE ;
typedef int DIPROPHEADER ;


 scalar_t__ DIERR_UNSUPPORTED ;
 int DIPH_DEVICE ;
 int DIPROP_RANGE ;
 scalar_t__ FAILED (scalar_t__) ;
 int GUID_SysKeyboard ;
 scalar_t__ IDirectInputDevice_GetProperty (int *,int ,TYPE_3__*) ;
 scalar_t__ IDirectInput_CreateDevice (int *,int *,int **,int *) ;
 int IUnknown_Release (int *) ;
 int SUCCEEDED (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_get_prop(IDirectInputA *pDI, HWND hwnd)
{
    HRESULT hr;
    IDirectInputDeviceA *pKeyboard = ((void*)0);
    DIPROPRANGE diprg;

    hr = IDirectInput_CreateDevice(pDI, &GUID_SysKeyboard, &pKeyboard, ((void*)0));
    ok(SUCCEEDED(hr), "IDirectInput_CreateDevice() failed: %08x\n", hr);
    if (FAILED(hr)) return;

    memset(&diprg, 0, sizeof(diprg));
    diprg.diph.dwSize = sizeof(DIPROPRANGE);
    diprg.diph.dwHeaderSize = sizeof(DIPROPHEADER);
    diprg.diph.dwHow = DIPH_DEVICE;
    diprg.diph.dwObj = 0;

    hr = IDirectInputDevice_GetProperty(pKeyboard, DIPROP_RANGE, &diprg.diph);
    ok(hr == DIERR_UNSUPPORTED, "IDirectInputDevice_GetProperty() did not return DIPROP_RANGE but: %08x\n", hr);

    if (pKeyboard) IUnknown_Release(pKeyboard);
}
