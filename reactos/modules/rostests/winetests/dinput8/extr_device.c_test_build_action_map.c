
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ddi ;
struct TYPE_9__ {scalar_t__ dwHow; int guidInstance; int dwObjID; } ;
struct TYPE_8__ {TYPE_3__* rgoAction; } ;
struct TYPE_7__ {int dwSize; int guidInstance; } ;
typedef int IDirectInputDevice8A ;
typedef int HRESULT ;
typedef int GUID ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ DIDEVICEINSTANCEA ;
typedef TYPE_2__ DIACTIONFORMATA ;
typedef TYPE_3__ DIACTIONA ;


 scalar_t__ DIAH_DEFAULT ;
 scalar_t__ DIAH_USERCONFIG ;
 int DIDBAM_HWDEFAULTS ;
 scalar_t__ DIDFT_GETINSTANCE (int ) ;
 scalar_t__ DIDFT_GETTYPE (int ) ;
 int IDirectInputDevice8_BuildActionMap (int *,TYPE_2__*,int *,int ) ;
 int IDirectInputDevice_GetDeviceInfo (int *,TYPE_1__*) ;
 int IsEqualGUID (int *,int *) ;
 int SUCCEEDED (int) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_build_action_map(IDirectInputDevice8A *lpdid, DIACTIONFORMATA *lpdiaf,
                                  int action_index, DWORD expected_type, DWORD expected_inst)
{
    HRESULT hr;
    DIACTIONA *actions;
    DWORD instance, type, how;
    GUID assigned_to;
    DIDEVICEINSTANCEA ddi;

    ddi.dwSize = sizeof(ddi);
    IDirectInputDevice_GetDeviceInfo(lpdid, &ddi);

    hr = IDirectInputDevice8_BuildActionMap(lpdid, lpdiaf, ((void*)0), DIDBAM_HWDEFAULTS);
    ok (SUCCEEDED(hr), "BuildActionMap failed hr=%08x\n", hr);

    actions = lpdiaf->rgoAction;
    instance = DIDFT_GETINSTANCE(actions[action_index].dwObjID);
    type = DIDFT_GETTYPE(actions[action_index].dwObjID);
    how = actions[action_index].dwHow;
    assigned_to = actions[action_index].guidInstance;

    ok (how == DIAH_USERCONFIG || how == DIAH_DEFAULT, "Action was not set dwHow=%08x\n", how);
    ok (instance == expected_inst, "Action not mapped correctly instance=%08x expected=%08x\n", instance, expected_inst);
    ok (type == expected_type, "Action type not mapped correctly type=%08x expected=%08x\n", type, expected_type);
    ok (IsEqualGUID(&assigned_to, &ddi.guidInstance), "Action and device GUID do not match action=%d\n", action_index);
}
