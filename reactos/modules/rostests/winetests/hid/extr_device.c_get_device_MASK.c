#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  interface_data ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ USHORT ;
typedef  int UINT ;
struct TYPE_13__ {scalar_t__ UsagePage; scalar_t__ Usage; } ;
struct TYPE_12__ {int cbSize; } ;
struct TYPE_11__ {int cbSize; int /*<<< orphan*/  DevicePath; } ;
typedef  TYPE_1__ SP_DEVICE_INTERFACE_DETAIL_DATA_W ;
typedef  TYPE_2__ SP_DEVICE_INTERFACE_DATA ;
typedef  int /*<<< orphan*/  PHIDP_PREPARSED_DATA ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_3__ HIDP_CAPS ;
typedef  int /*<<< orphan*/  HDEVINFO ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DIGCF_DEVICEINTERFACE ; 
 int DIGCF_PRESENT ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  FILE_FLAG_OVERLAPPED ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ HIDP_STATUS_SUCCESS ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HANDLE FUNC18(USHORT page, USHORT usages[], UINT usage_count, DWORD access)
{
    GUID hid_guid;
    HDEVINFO info_set;
    DWORD index = 0;
    SP_DEVICE_INTERFACE_DATA interface_data;
    DWORD detail_size = MAX_PATH * sizeof(WCHAR);
    SP_DEVICE_INTERFACE_DETAIL_DATA_W *data;
    NTSTATUS status;
    BOOL rc;

    FUNC7(&hid_guid);

    FUNC14(&interface_data, sizeof(interface_data));
    interface_data.cbSize = sizeof(interface_data);

    data = FUNC4(FUNC3(), 0 , sizeof(*data) + detail_size);
    data->cbSize = sizeof(*data);

    info_set = FUNC12(&hid_guid, NULL, NULL, DIGCF_DEVICEINTERFACE | DIGCF_PRESENT);
    while (FUNC11(info_set, NULL, &hid_guid, index, &interface_data))
    {
        index ++;

        if (FUNC13(info_set, &interface_data, data, sizeof(*data) + detail_size, NULL, NULL))
        {
            PHIDP_PREPARSED_DATA ppd;
            HIDP_CAPS Caps;
            HANDLE file = FUNC1(data->DevicePath, access, FILE_SHARE_READ|FILE_SHARE_WRITE, NULL, OPEN_EXISTING, FILE_FLAG_OVERLAPPED, 0);
            if (file == INVALID_HANDLE_VALUE && FUNC2() == ERROR_ACCESS_DENIED)
            {
                FUNC16("Not enough permissions to read device %s.\n", FUNC17(data->DevicePath));
                continue;
            }
            FUNC15(file != INVALID_HANDLE_VALUE, "got error %u\n", FUNC2());

            rc = FUNC8(file, &ppd);
            FUNC15(rc, "Failed to get preparsed data(0x%x)\n", FUNC2());
            status = FUNC9(ppd, &Caps);
            FUNC15(status == HIDP_STATUS_SUCCESS, "Failed to get Caps(0x%x)\n", status);
            rc = FUNC6(ppd);
            FUNC15(rc, "Failed to free preparsed data(0x%x)\n", FUNC2());
            if (!page || page == Caps.UsagePage)
            {
                int j;
                if (!usage_count)
                {
                    FUNC5(FUNC3(), 0, data);
                    FUNC10(info_set);
                    return file;
                }
                for (j = 0; j < usage_count; j++)
                    if (!usages[j] || usages[j] == Caps.Usage)
                    {
                        FUNC5(FUNC3(), 0, data);
                        FUNC10(info_set);
                        return file;
                    }
            }
            FUNC0(file);
        }
    }
    FUNC5(FUNC3(), 0, data);
    FUNC10(info_set);
    return NULL;
}