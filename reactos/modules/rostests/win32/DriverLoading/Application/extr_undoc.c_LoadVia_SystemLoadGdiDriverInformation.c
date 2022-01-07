
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DriverName; } ;
typedef TYPE_1__ SYSTEM_GDI_DRIVER_INFORMATION ;
typedef scalar_t__ NTSTATUS ;
typedef int LPWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ NtSetSystemInformation (int ,TYPE_1__*,int) ;
 int NtUnloadDriver (int *) ;
 int RtlInitUnicodeString (int *,int ) ;
 int RtlNtStatusToDosError (scalar_t__) ;
 scalar_t__ STATUS_PRIVILEGE_NOT_HELD ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ SetPrivilege (int ) ;
 int SystemLoadGdiDriverInformation ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int wprintf (char*,...) ;

BOOL
LoadVia_SystemLoadGdiDriverInformation(LPWSTR lpDriverPath)
{
    NTSTATUS Status;
    SYSTEM_GDI_DRIVER_INFORMATION Buffer;
    DWORD bufSize;

    bufSize = sizeof(SYSTEM_GDI_DRIVER_INFORMATION);

    ZeroMemory(&Buffer, bufSize);
    RtlInitUnicodeString(&Buffer.DriverName, lpDriverPath);

    if (SetPrivilege(TRUE))
    {
        Status = NtSetSystemInformation(SystemLoadGdiDriverInformation,
                                        &Buffer,
                                        bufSize);
        if (Status == STATUS_PRIVILEGE_NOT_HELD)
        {
            wprintf(L"SystemLoadGdiDriverInformation can only be used in kmode.\n");
        }
        else if (Status == STATUS_SUCCESS)
        {
            wprintf(L"SystemLoadGdiDriverInformation incorrectly loaded the driver\n");
            NtUnloadDriver(&Buffer.DriverName);

            return TRUE;
        }
        else
        {
            DWORD err = RtlNtStatusToDosError(Status);
            wprintf(L"LoadVia_SystemLoadGdiDriverInformation failed [%lu]\n", err);
        }

        SetPrivilege(FALSE);
    }

    return FALSE;
}
