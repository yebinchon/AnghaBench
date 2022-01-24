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
typedef  int /*<<< orphan*/  device_name ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  USAGE ;
struct TYPE_4__ {int InputReportByteLength; } ;
typedef  int /*<<< orphan*/  PHIDP_PREPARSED_DATA ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_1__ HIDP_CAPS ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ CHAR ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 scalar_t__ HIDP_STATUS_SUCCESS ; 
 int /*<<< orphan*/  HID_USAGE_GENERIC_GAMEPAD ; 
 int /*<<< orphan*/  HID_USAGE_GENERIC_JOYSTICK ; 
 int HID_USAGE_PAGE_GENERIC ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,scalar_t__*,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int READ_MAX_TIME ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC19(void)
{
    PHIDP_PREPARSED_DATA ppd;
    HIDP_CAPS Caps;
    WCHAR device_name[128];
    CHAR *data = NULL;
    DWORD tick, spent, max_time;
    char *report;
    BOOL rc;
    NTSTATUS status;

    USAGE device_usages[] = {HID_USAGE_GENERIC_JOYSTICK, HID_USAGE_GENERIC_GAMEPAD};
    HANDLE device = FUNC12(HID_USAGE_PAGE_GENERIC, device_usages, 2, GENERIC_READ);

    if (!device)
        device = FUNC12(0x0, NULL, 0x0, GENERIC_READ);

    if (!device)
    {
        FUNC17("No device found for testing\n");
        return;
    }
    rc = FUNC9(device, device_name, sizeof(device_name));
    FUNC13(rc, "Failed to get product string(0x%x)\n", FUNC1());
    FUNC17("HidD_GetInputRpeort tests on device :%s\n",FUNC18(device_name));

    rc = FUNC8(device, &ppd);
    FUNC13(rc, "Failed to get preparsed data(0x%x)\n", FUNC1());
    status = FUNC10(ppd, &Caps);
    FUNC13(status == HIDP_STATUS_SUCCESS, "Failed to get Caps(0x%x)\n", status);
    data = FUNC4(FUNC2(), 0, Caps.InputReportByteLength);

    if (winetest_interactive)
        max_time = READ_MAX_TIME;
    else
        max_time = 100;
    if (winetest_interactive)
        FUNC17("Test your device for the next %i seconds\n", max_time/1000);
    report = FUNC4(FUNC2(), 0, 3 * Caps.InputReportByteLength);
    tick = FUNC3();
    spent = 0;
    do
    {
        int i;

        data[0] = 0; /* Just testing report ID 0 for now, That will catch most devices */
        rc = FUNC7(device, data, Caps.InputReportByteLength);
        spent = FUNC3() - tick;

        if (rc)
        {
            FUNC13(data[0] == 0, "Report ID (0) is not the first byte of the data\n");
            report[0] = 0;
            for (i = 0; i < Caps.InputReportByteLength; i++)
            {
                char bytestr[5];
                FUNC15(bytestr, "%x ", (BYTE)data[i]);
                FUNC16(report, bytestr);
            }
            FUNC17("Input report (%i): %s\n", Caps.InputReportByteLength, report);

            FUNC14(Caps, ppd, data, Caps.InputReportByteLength);
        }
        else
            FUNC17("Failed to get Input Report, (%x)\n", rc);
        FUNC17("REMAINING: %d ms\n", max_time - spent);
        FUNC11(500);
    } while(spent < max_time);

    rc = FUNC6(ppd);
    FUNC13(rc, "Failed to free preparsed data(0x%x)\n", FUNC1());
    FUNC0(device);
    FUNC5(FUNC2(), 0, data);
    FUNC5(FUNC2(), 0, report);
}