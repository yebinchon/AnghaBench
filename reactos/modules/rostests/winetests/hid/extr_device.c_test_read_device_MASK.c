#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  overlapped ;
typedef  int /*<<< orphan*/  device_name ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  USAGE ;
struct TYPE_9__ {int InputReportByteLength; } ;
struct TYPE_8__ {scalar_t__ hEvent; } ;
typedef  int /*<<< orphan*/  PHIDP_PREPARSED_DATA ;
typedef  TYPE_1__ OVERLAPPED ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_2__ HIDP_CAPS ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  char CHAR ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ HIDP_STATUS_SUCCESS ; 
 int /*<<< orphan*/  HID_USAGE_GENERIC_GAMEPAD ; 
 int /*<<< orphan*/  HID_USAGE_GENERIC_JOYSTICK ; 
 int HID_USAGE_PAGE_GENERIC ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int READ_MAX_TIME ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC23(void)
{
    PHIDP_PREPARSED_DATA ppd;
    HIDP_CAPS Caps;
    OVERLAPPED overlapped;
    WCHAR device_name[128];
    CHAR *data = NULL;
    DWORD read;
    BOOL rc;
    NTSTATUS status;
    DWORD timeout, tick, spent, max_time;
    char *report;

    USAGE device_usages[] = {HID_USAGE_GENERIC_JOYSTICK, HID_USAGE_GENERIC_GAMEPAD};
    HANDLE device = FUNC15(HID_USAGE_PAGE_GENERIC, device_usages, 2, GENERIC_READ);

    if (!device)
        device = FUNC15(0x0, NULL, 0x0, GENERIC_READ);

    if (!device)
    {
        FUNC21("No device found for reading\n");
        return;
    }
    rc = FUNC10(device, device_name, sizeof(device_name));
    FUNC17(rc, "Failed to get product string(0x%x)\n", FUNC2());
    FUNC21("Read tests on device :%s\n",FUNC22(device_name));

    rc = FUNC9(device, &ppd);
    FUNC17(rc, "Failed to get preparsed data(0x%x)\n", FUNC2());
    status = FUNC11(ppd, &Caps);
    FUNC17(status == HIDP_STATUS_SUCCESS, "Failed to get Caps(0x%x)\n", status);
    data = FUNC6(FUNC4(), 0, Caps.InputReportByteLength);

    FUNC16(&overlapped, 0, sizeof(overlapped));
    overlapped.hEvent = FUNC1(NULL, FALSE, FALSE, NULL);
    if (winetest_interactive)
    {
        max_time = READ_MAX_TIME;
        timeout = 1000;
    }
    else
        max_time = timeout = 100;
    if (winetest_interactive)
        FUNC21("Test your device for the next %i seconds\n", max_time/1000);
    report = FUNC6(FUNC4(), 0, 3 * Caps.InputReportByteLength);
    tick = FUNC5();
    spent = 0;
    do
    {
        FUNC12(device, data, Caps.InputReportByteLength, NULL, &overlapped);
        if (FUNC14(overlapped.hEvent, timeout) != WAIT_OBJECT_0)
        {
            FUNC13(overlapped.hEvent);
            spent = FUNC5() - tick;
            FUNC21("REMAINING: %d ms\n", max_time - spent);
            continue;
        }
        FUNC13(overlapped.hEvent);
        spent = FUNC5() - tick;
        FUNC3(device, &overlapped, &read, FALSE);
        if (read)
        {
            int i;

            report[0] = 0;
            for (i = 0; i < read && i < Caps.InputReportByteLength; i++)
            {
                char bytestr[5];
                FUNC19(bytestr, "%x ", (BYTE)data[i]);
                FUNC20(report, bytestr);
            }
            FUNC21("Input report (%i): %s\n", read, report);

            FUNC18(Caps, ppd, data, read);
        }
        FUNC21("REMAINING: %d ms\n", max_time - spent);
    } while(spent < max_time);

    FUNC0(overlapped.hEvent);
    rc = FUNC8(ppd);
    FUNC17(rc, "Failed to free preparsed data(0x%x)\n", FUNC2());
    FUNC0(device);
    FUNC7(FUNC4(), 0, data);
    FUNC7(FUNC4(), 0, report);
}