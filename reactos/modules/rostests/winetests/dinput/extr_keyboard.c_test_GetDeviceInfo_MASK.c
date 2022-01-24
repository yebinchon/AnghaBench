#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  instA ;
typedef  int /*<<< orphan*/  inst3A ;
struct TYPE_5__ {int dwSize; int dwDevType; int /*<<< orphan*/  guidProduct; int /*<<< orphan*/  guidInstance; } ;
struct TYPE_4__ {int dwSize; int dwDevType; int /*<<< orphan*/  guidProduct; int /*<<< orphan*/  guidInstance; } ;
typedef  int /*<<< orphan*/  IDirectInputDeviceA ;
typedef  int /*<<< orphan*/  IDirectInputA ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DIDEVICEINSTANCE_DX3A ;
typedef  TYPE_2__ DIDEVICEINSTANCEA ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GUID_SysKeyboard ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(IDirectInputA *pDI)
{
    HRESULT hr;
    IDirectInputDeviceA *pKey = NULL;
    DIDEVICEINSTANCEA instA;
    DIDEVICEINSTANCE_DX3A inst3A;

    hr = FUNC2(pDI, &GUID_SysKeyboard, &pKey, NULL);
    FUNC6(FUNC5(hr), "IDirectInput_CreateDevice() failed: %08x\n", hr);
    if (FUNC0(hr)) return;

    instA.dwSize = sizeof(instA);
    hr = FUNC1(pKey, &instA);
    FUNC6(FUNC5(hr), "got %08x\n", hr);

    inst3A.dwSize = sizeof(inst3A);
    hr = FUNC1(pKey, (DIDEVICEINSTANCEA *)&inst3A);
    FUNC6(FUNC5(hr), "got %08x\n", hr);

    FUNC6(instA.dwSize != inst3A.dwSize, "got %d, %d \n", instA.dwSize, inst3A.dwSize);
    FUNC6(FUNC4(&instA.guidInstance, &inst3A.guidInstance), "got %s, %s\n",
            FUNC7(&instA.guidInstance), FUNC7(&inst3A.guidInstance) );
    FUNC6(FUNC4(&instA.guidProduct, &inst3A.guidProduct), "got %s, %s\n",
            FUNC7(&instA.guidProduct), FUNC7(&inst3A.guidProduct) );
    FUNC6(instA.dwDevType == inst3A.dwDevType, "got %d, %d\n", instA.dwDevType, inst3A.dwDevType);

    FUNC3(pKey);
}