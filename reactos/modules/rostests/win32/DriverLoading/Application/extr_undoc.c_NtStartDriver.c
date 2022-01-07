
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UNICODE_STRING ;
typedef scalar_t__ NTSTATUS ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int MAX_PATH ;
 scalar_t__ NtLoadDriver (int *) ;
 int RtlInitUnicodeString (int *,int *) ;
 int RtlNtStatusToDosError (scalar_t__) ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ SetPrivilege (int ) ;
 int TRUE ;
 int wcscat (int *,int ) ;
 int wcscpy (int *,char*) ;
 int wprintf (char*,int ) ;

BOOL
NtStartDriver(LPCWSTR lpService)
{
    WCHAR szDriverPath[MAX_PATH];
    UNICODE_STRING DriverPath;
    NTSTATUS Status = -1;

    wcscpy(szDriverPath,
           L"\\Registry\\Machine\\System\\CurrentControlSet\\Services\\");
    wcscat(szDriverPath,
           lpService);

    RtlInitUnicodeString(&DriverPath,
                         szDriverPath);

    if (SetPrivilege(TRUE))
    {
        Status = NtLoadDriver(&DriverPath);
        if (Status != STATUS_SUCCESS)
        {
            DWORD err = RtlNtStatusToDosError(Status);
            wprintf(L"NtUnloadDriver failed [%lu]\n", err);
        }

        SetPrivilege(FALSE);
    }

    return (Status == STATUS_SUCCESS);
}
