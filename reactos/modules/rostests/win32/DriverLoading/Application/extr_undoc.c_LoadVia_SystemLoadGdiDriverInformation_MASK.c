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
struct TYPE_4__ {int /*<<< orphan*/  DriverName; } ;
typedef  TYPE_1__ SYSTEM_GDI_DRIVER_INFORMATION ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ STATUS_PRIVILEGE_NOT_HELD ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SystemLoadGdiDriverInformation ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

BOOL
FUNC7(LPWSTR lpDriverPath)
{
    NTSTATUS Status;
    SYSTEM_GDI_DRIVER_INFORMATION Buffer;
    DWORD bufSize;

    bufSize = sizeof(SYSTEM_GDI_DRIVER_INFORMATION);

    FUNC5(&Buffer, bufSize);
    FUNC2(&Buffer.DriverName, lpDriverPath);

    if (FUNC4(TRUE))
    {
        Status = FUNC0(SystemLoadGdiDriverInformation,
                                        &Buffer,
                                        bufSize);
        if (Status == STATUS_PRIVILEGE_NOT_HELD)
        {
            FUNC6(L"SystemLoadGdiDriverInformation can only be used in kmode.\n");
        }
        else if (Status == STATUS_SUCCESS)
        {
            FUNC6(L"SystemLoadGdiDriverInformation incorrectly loaded the driver\n");
            FUNC1(&Buffer.DriverName);

            return TRUE;
        }
        else
        {
            DWORD err = FUNC3(Status);
            FUNC6(L"LoadVia_SystemLoadGdiDriverInformation failed [%lu]\n", err);
        }

        FUNC4(FALSE);
    }

    return FALSE;
}