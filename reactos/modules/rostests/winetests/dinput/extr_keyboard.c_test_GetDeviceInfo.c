
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int instA ;
typedef int inst3A ;
struct TYPE_5__ {int dwSize; int dwDevType; int guidProduct; int guidInstance; } ;
struct TYPE_4__ {int dwSize; int dwDevType; int guidProduct; int guidInstance; } ;
typedef int IDirectInputDeviceA ;
typedef int IDirectInputA ;
typedef int HRESULT ;
typedef TYPE_1__ DIDEVICEINSTANCE_DX3A ;
typedef TYPE_2__ DIDEVICEINSTANCEA ;


 scalar_t__ FAILED (int ) ;
 int GUID_SysKeyboard ;
 int IDirectInputDevice_GetDeviceInfo (int *,TYPE_2__*) ;
 int IDirectInput_CreateDevice (int *,int *,int **,int *) ;
 int IUnknown_Release (int *) ;
 int IsEqualGUID (int *,int *) ;
 int SUCCEEDED (int ) ;
 int ok (int,char*,int,...) ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_GetDeviceInfo(IDirectInputA *pDI)
{
    HRESULT hr;
    IDirectInputDeviceA *pKey = ((void*)0);
    DIDEVICEINSTANCEA instA;
    DIDEVICEINSTANCE_DX3A inst3A;

    hr = IDirectInput_CreateDevice(pDI, &GUID_SysKeyboard, &pKey, ((void*)0));
    ok(SUCCEEDED(hr), "IDirectInput_CreateDevice() failed: %08x\n", hr);
    if (FAILED(hr)) return;

    instA.dwSize = sizeof(instA);
    hr = IDirectInputDevice_GetDeviceInfo(pKey, &instA);
    ok(SUCCEEDED(hr), "got %08x\n", hr);

    inst3A.dwSize = sizeof(inst3A);
    hr = IDirectInputDevice_GetDeviceInfo(pKey, (DIDEVICEINSTANCEA *)&inst3A);
    ok(SUCCEEDED(hr), "got %08x\n", hr);

    ok(instA.dwSize != inst3A.dwSize, "got %d, %d \n", instA.dwSize, inst3A.dwSize);
    ok(IsEqualGUID(&instA.guidInstance, &inst3A.guidInstance), "got %s, %s\n",
            wine_dbgstr_guid(&instA.guidInstance), wine_dbgstr_guid(&inst3A.guidInstance) );
    ok(IsEqualGUID(&instA.guidProduct, &inst3A.guidProduct), "got %s, %s\n",
            wine_dbgstr_guid(&instA.guidProduct), wine_dbgstr_guid(&inst3A.guidProduct) );
    ok(instA.dwDevType == inst3A.dwDevType, "got %d, %d\n", instA.dwDevType, inst3A.dwDevType);

    IUnknown_Release(pKey);
}
