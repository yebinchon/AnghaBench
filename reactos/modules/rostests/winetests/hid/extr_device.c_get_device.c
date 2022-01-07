
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int interface_data ;
typedef int WCHAR ;
typedef scalar_t__ USHORT ;
typedef int UINT ;
struct TYPE_13__ {scalar_t__ UsagePage; scalar_t__ Usage; } ;
struct TYPE_12__ {int cbSize; } ;
struct TYPE_11__ {int cbSize; int DevicePath; } ;
typedef TYPE_1__ SP_DEVICE_INTERFACE_DETAIL_DATA_W ;
typedef TYPE_2__ SP_DEVICE_INTERFACE_DATA ;
typedef int PHIDP_PREPARSED_DATA ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_3__ HIDP_CAPS ;
typedef int HDEVINFO ;
typedef scalar_t__ HANDLE ;
typedef int GUID ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int,int,int *,int ,int ,int ) ;
 int DIGCF_DEVICEINTERFACE ;
 int DIGCF_PRESENT ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 int FILE_FLAG_OVERLAPPED ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 scalar_t__ HIDP_STATUS_SUCCESS ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int HidD_FreePreparsedData (int ) ;
 int HidD_GetHidGuid (int *) ;
 int HidD_GetPreparsedData (scalar_t__,int *) ;
 scalar_t__ HidP_GetCaps (int ,TYPE_3__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int SetupDiDestroyDeviceInfoList (int ) ;
 scalar_t__ SetupDiEnumDeviceInterfaces (int ,int *,int *,int,TYPE_2__*) ;
 int SetupDiGetClassDevsW (int *,int *,int *,int) ;
 scalar_t__ SetupDiGetDeviceInterfaceDetailW (int ,TYPE_2__*,TYPE_1__*,int,int *,int *) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int ok (int,char*,scalar_t__) ;
 int trace (char*,int ) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static HANDLE get_device(USHORT page, USHORT usages[], UINT usage_count, DWORD access)
{
    GUID hid_guid;
    HDEVINFO info_set;
    DWORD index = 0;
    SP_DEVICE_INTERFACE_DATA interface_data;
    DWORD detail_size = MAX_PATH * sizeof(WCHAR);
    SP_DEVICE_INTERFACE_DETAIL_DATA_W *data;
    NTSTATUS status;
    BOOL rc;

    HidD_GetHidGuid(&hid_guid);

    ZeroMemory(&interface_data, sizeof(interface_data));
    interface_data.cbSize = sizeof(interface_data);

    data = HeapAlloc(GetProcessHeap(), 0 , sizeof(*data) + detail_size);
    data->cbSize = sizeof(*data);

    info_set = SetupDiGetClassDevsW(&hid_guid, ((void*)0), ((void*)0), DIGCF_DEVICEINTERFACE | DIGCF_PRESENT);
    while (SetupDiEnumDeviceInterfaces(info_set, ((void*)0), &hid_guid, index, &interface_data))
    {
        index ++;

        if (SetupDiGetDeviceInterfaceDetailW(info_set, &interface_data, data, sizeof(*data) + detail_size, ((void*)0), ((void*)0)))
        {
            PHIDP_PREPARSED_DATA ppd;
            HIDP_CAPS Caps;
            HANDLE file = CreateFileW(data->DevicePath, access, FILE_SHARE_READ|FILE_SHARE_WRITE, ((void*)0), OPEN_EXISTING, FILE_FLAG_OVERLAPPED, 0);
            if (file == INVALID_HANDLE_VALUE && GetLastError() == ERROR_ACCESS_DENIED)
            {
                trace("Not enough permissions to read device %s.\n", wine_dbgstr_w(data->DevicePath));
                continue;
            }
            ok(file != INVALID_HANDLE_VALUE, "got error %u\n", GetLastError());

            rc = HidD_GetPreparsedData(file, &ppd);
            ok(rc, "Failed to get preparsed data(0x%x)\n", GetLastError());
            status = HidP_GetCaps(ppd, &Caps);
            ok(status == HIDP_STATUS_SUCCESS, "Failed to get Caps(0x%x)\n", status);
            rc = HidD_FreePreparsedData(ppd);
            ok(rc, "Failed to free preparsed data(0x%x)\n", GetLastError());
            if (!page || page == Caps.UsagePage)
            {
                int j;
                if (!usage_count)
                {
                    HeapFree(GetProcessHeap(), 0, data);
                    SetupDiDestroyDeviceInfoList(info_set);
                    return file;
                }
                for (j = 0; j < usage_count; j++)
                    if (!usages[j] || usages[j] == Caps.Usage)
                    {
                        HeapFree(GetProcessHeap(), 0, data);
                        SetupDiDestroyDeviceInfoList(info_set);
                        return file;
                    }
            }
            CloseHandle(file);
        }
    }
    HeapFree(GetProcessHeap(), 0, data);
    SetupDiDestroyDeviceInfoList(info_set);
    return ((void*)0);
}
