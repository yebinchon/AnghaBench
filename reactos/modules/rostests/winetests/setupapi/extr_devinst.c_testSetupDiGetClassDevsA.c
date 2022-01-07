
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int disp ;
typedef int devinfo ;
struct TYPE_11__ {int cb; int DeviceID; } ;
struct TYPE_8__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_10__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
struct TYPE_9__ {int cbSize; } ;
typedef TYPE_2__ SP_DEVINFO_DATA ;
typedef scalar_t__ HDEVINFO ;
typedef TYPE_3__ GUID ;
typedef TYPE_4__ DISPLAY_DEVICEA ;
typedef int BOOL ;


 int EnumDisplayDevicesA (int *,int ,TYPE_4__*,int ) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SetLastError (int) ;
 int SetupDiDestroyDeviceInfoList (scalar_t__) ;
 int SetupDiEnumDeviceInfo (scalar_t__,int ,TYPE_2__*) ;
 scalar_t__ SetupDiGetClassDevsA (TYPE_3__*,int ,int ,int ) ;
 int ok (int,char*,int ) ;

__attribute__((used)) static void testSetupDiGetClassDevsA(void)
{
    static GUID displayguid = {0x4d36e968, 0xe325, 0x11ce, {0xbf,0xc1,0x08,0x00,0x2b,0xe1,0x03,0x18}};
    SP_DEVINFO_DATA devinfo;
    DISPLAY_DEVICEA disp;
    HDEVINFO set;
    BOOL ret;

    disp.cb = sizeof(disp);
    ok(EnumDisplayDevicesA(((void*)0), 0, &disp, 0), "EnumDisplayDevices failed: %08x\n", GetLastError());

    SetLastError(0xdeadbeef);
    set = SetupDiGetClassDevsA(&displayguid, disp.DeviceID, 0, 0);
    ok(set != INVALID_HANDLE_VALUE, "SetupDiGetClassDevsA failed: %08x\n", GetLastError());

    devinfo.cbSize = sizeof(devinfo);
    ret = SetupDiEnumDeviceInfo(set, 0, &devinfo);
    ok(ret, "SetupDiEnumDeviceInfo failed: %08x\n", GetLastError());

    SetupDiDestroyDeviceInfoList(set);
}
