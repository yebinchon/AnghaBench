
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef scalar_t__ NTSTATUS ;
typedef int LPWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ NtSetSystemInformation (int ,int *,int) ;
 int NtUnloadDriver (int *) ;
 int RtlInitUnicodeString (int *,int ) ;
 int RtlNtStatusToDosError (scalar_t__) ;
 scalar_t__ STATUS_PRIVILEGE_NOT_HELD ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ SetPrivilege (int ) ;
 int SystemExtendServiceTableInformation ;
 int TRUE ;
 int wprintf (char*,...) ;

BOOL
LoadVia_SystemExtendServiceTableInformation(LPWSTR lpDriverPath)
{
    NTSTATUS Status;
    UNICODE_STRING Buffer;
    DWORD bufSize;

    RtlInitUnicodeString(&Buffer, lpDriverPath);
    bufSize = sizeof(UNICODE_STRING);

    if (SetPrivilege(TRUE))
    {
        Status = NtSetSystemInformation(SystemExtendServiceTableInformation,
                                        &Buffer,
                                        bufSize);
        if (Status == STATUS_PRIVILEGE_NOT_HELD)
        {
            wprintf(L"SystemExtendServiceTableInformation can only be used in kmode.\n");
        }
        else if (Status == STATUS_SUCCESS)
        {
            wprintf(L"SystemExtendServiceTableInformation incorrectly loaded the driver\n");
            NtUnloadDriver(&Buffer);

            return TRUE;
        }
        else
        {
            DWORD err = RtlNtStatusToDosError(Status);
            wprintf(L"LoadVia_SystemExtendServiceTableInformation failed [%lu] - 0x%x\n", err, Status);
        }

        SetPrivilege(FALSE);
    }

    return FALSE;
}
