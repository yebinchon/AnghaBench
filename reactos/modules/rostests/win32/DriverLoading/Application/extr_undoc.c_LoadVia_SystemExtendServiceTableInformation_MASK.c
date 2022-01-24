#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ STATUS_PRIVILEGE_NOT_HELD ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SystemExtendServiceTableInformation ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

BOOL
FUNC6(LPWSTR lpDriverPath)
{
    NTSTATUS Status;
    UNICODE_STRING Buffer;
    DWORD bufSize;

    FUNC2(&Buffer, lpDriverPath);
    bufSize = sizeof(UNICODE_STRING);

    if (FUNC4(TRUE))
    {
        Status = FUNC0(SystemExtendServiceTableInformation,
                                        &Buffer,
                                        bufSize);
        if (Status == STATUS_PRIVILEGE_NOT_HELD)
        {
            FUNC5(L"SystemExtendServiceTableInformation can only be used in kmode.\n");
        }
        else if (Status == STATUS_SUCCESS)
        {
            FUNC5(L"SystemExtendServiceTableInformation incorrectly loaded the driver\n");
            FUNC1(&Buffer);

            return TRUE;
        }
        else
        {
            DWORD err = FUNC3(Status);
            FUNC5(L"LoadVia_SystemExtendServiceTableInformation failed [%lu] - 0x%x\n", err, Status);
        }

        FUNC4(FALSE);
    }

    return FALSE;
}