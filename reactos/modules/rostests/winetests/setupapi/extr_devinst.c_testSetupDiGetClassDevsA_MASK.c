#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  disp ;
typedef  int /*<<< orphan*/  devinfo ;
struct TYPE_11__ {int cb; int /*<<< orphan*/  DeviceID; } ;
struct TYPE_8__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_10__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
struct TYPE_9__ {int cbSize; } ;
typedef  TYPE_2__ SP_DEVINFO_DATA ;
typedef  scalar_t__ HDEVINFO ;
typedef  TYPE_3__ GUID ;
typedef  TYPE_4__ DISPLAY_DEVICEA ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
    static GUID displayguid = {0x4d36e968, 0xe325, 0x11ce, {0xbf,0xc1,0x08,0x00,0x2b,0xe1,0x03,0x18}};
    SP_DEVINFO_DATA devinfo;
    DISPLAY_DEVICEA disp;
    HDEVINFO set;
    BOOL ret;

    disp.cb = sizeof(disp);
    FUNC6(FUNC0(NULL, 0, &disp, 0), "EnumDisplayDevices failed: %08x\n", FUNC1());

    FUNC2(0xdeadbeef);
    set = FUNC5(&displayguid, disp.DeviceID, 0, 0);
    FUNC6(set != INVALID_HANDLE_VALUE, "SetupDiGetClassDevsA failed: %08x\n", FUNC1());

    devinfo.cbSize = sizeof(devinfo);
    ret = FUNC4(set, 0, &devinfo);
    FUNC6(ret, "SetupDiEnumDeviceInfo failed: %08x\n", FUNC1());

    FUNC3(set);
}