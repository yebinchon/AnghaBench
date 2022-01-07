
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int device_name ;
typedef int WCHAR ;
typedef int USAGE ;
struct TYPE_4__ {int InputReportByteLength; } ;
typedef int PHIDP_PREPARSED_DATA ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_1__ HIDP_CAPS ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ CHAR ;
typedef int BYTE ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 int GENERIC_READ ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int GetTickCount () ;
 scalar_t__ HIDP_STATUS_SUCCESS ;
 int HID_USAGE_GENERIC_GAMEPAD ;
 int HID_USAGE_GENERIC_JOYSTICK ;
 int HID_USAGE_PAGE_GENERIC ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,...) ;
 int HidD_FreePreparsedData (int ) ;
 int HidD_GetInputReport (scalar_t__,scalar_t__*,int) ;
 int HidD_GetPreparsedData (scalar_t__,int *) ;
 int HidD_GetProductString (scalar_t__,int *,int) ;
 scalar_t__ HidP_GetCaps (int ,TYPE_1__*) ;
 int READ_MAX_TIME ;
 int Sleep (int) ;
 scalar_t__ get_device (int,int *,int,int ) ;
 int ok (int,char*,...) ;
 int process_data (TYPE_1__,int ,scalar_t__*,int) ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;
 int trace (char*,...) ;
 int wine_dbgstr_w (int *) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_get_input_report(void)
{
    PHIDP_PREPARSED_DATA ppd;
    HIDP_CAPS Caps;
    WCHAR device_name[128];
    CHAR *data = ((void*)0);
    DWORD tick, spent, max_time;
    char *report;
    BOOL rc;
    NTSTATUS status;

    USAGE device_usages[] = {HID_USAGE_GENERIC_JOYSTICK, HID_USAGE_GENERIC_GAMEPAD};
    HANDLE device = get_device(HID_USAGE_PAGE_GENERIC, device_usages, 2, GENERIC_READ);

    if (!device)
        device = get_device(0x0, ((void*)0), 0x0, GENERIC_READ);

    if (!device)
    {
        trace("No device found for testing\n");
        return;
    }
    rc = HidD_GetProductString(device, device_name, sizeof(device_name));
    ok(rc, "Failed to get product string(0x%x)\n", GetLastError());
    trace("HidD_GetInputRpeort tests on device :%s\n",wine_dbgstr_w(device_name));

    rc = HidD_GetPreparsedData(device, &ppd);
    ok(rc, "Failed to get preparsed data(0x%x)\n", GetLastError());
    status = HidP_GetCaps(ppd, &Caps);
    ok(status == HIDP_STATUS_SUCCESS, "Failed to get Caps(0x%x)\n", status);
    data = HeapAlloc(GetProcessHeap(), 0, Caps.InputReportByteLength);

    if (winetest_interactive)
        max_time = READ_MAX_TIME;
    else
        max_time = 100;
    if (winetest_interactive)
        trace("Test your device for the next %i seconds\n", max_time/1000);
    report = HeapAlloc(GetProcessHeap(), 0, 3 * Caps.InputReportByteLength);
    tick = GetTickCount();
    spent = 0;
    do
    {
        int i;

        data[0] = 0;
        rc = HidD_GetInputReport(device, data, Caps.InputReportByteLength);
        spent = GetTickCount() - tick;

        if (rc)
        {
            ok(data[0] == 0, "Report ID (0) is not the first byte of the data\n");
            report[0] = 0;
            for (i = 0; i < Caps.InputReportByteLength; i++)
            {
                char bytestr[5];
                sprintf(bytestr, "%x ", (BYTE)data[i]);
                strcat(report, bytestr);
            }
            trace("Input report (%i): %s\n", Caps.InputReportByteLength, report);

            process_data(Caps, ppd, data, Caps.InputReportByteLength);
        }
        else
            trace("Failed to get Input Report, (%x)\n", rc);
        trace("REMAINING: %d ms\n", max_time - spent);
        Sleep(500);
    } while(spent < max_time);

    rc = HidD_FreePreparsedData(ppd);
    ok(rc, "Failed to free preparsed data(0x%x)\n", GetLastError());
    CloseHandle(device);
    HeapFree(GetProcessHeap(), 0, data);
    HeapFree(GetProcessHeap(), 0, report);
}
