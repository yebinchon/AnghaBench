
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int MaximumLength; int * Buffer; scalar_t__ Length; } ;
typedef TYPE_1__ WCHAR ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONG ;
typedef int PWSTR ;
typedef int * PVOID ;
typedef int NTSTATUS ;
typedef TYPE_1__* LPWSTR ;
typedef scalar_t__ BOOL ;


 int ARRAYSIZE (TYPE_1__*) ;
 int DPRINT (char*,TYPE_1__*,...) ;
 int DPRINT1 (char*,...) ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 scalar_t__ GetShortPathNameW (int *,TYPE_1__*,int ) ;
 int LPTR ;
 int * LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 int MAX_PATH ;
 int NT_SUCCESS (int) ;
 int RtlExpandEnvironmentStrings_U (int ,TYPE_1__*,TYPE_1__*,int*) ;
 int RtlInitUnicodeString (TYPE_1__*,TYPE_1__*) ;
 int RtlSetEnvironmentVariable (int *,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ TRUE ;
 int _wcsicmp (TYPE_1__*,char*) ;

__attribute__((used)) static
BOOL
SetUserEnvironmentVariable(PWSTR* Environment,
                           LPWSTR lpName,
                           LPWSTR lpValue,
                           BOOL bExpand)
{
    NTSTATUS Status;
    UNICODE_STRING Name;
    UNICODE_STRING SrcValue, DstValue;
    ULONG Length;
    PVOID Buffer = ((void*)0);
    WCHAR ShortName[MAX_PATH];

    if (bExpand)
    {
        RtlInitUnicodeString(&SrcValue, lpValue);

        Length = 2 * MAX_PATH * sizeof(WCHAR);

        DstValue.Length = 0;
        DstValue.MaximumLength = Length;
        DstValue.Buffer = Buffer = LocalAlloc(LPTR, Length);
        if (DstValue.Buffer == ((void*)0))
        {
            DPRINT1("LocalAlloc() failed\n");
            return FALSE;
        }

        Status = RtlExpandEnvironmentStrings_U(*Environment,
                                               &SrcValue,
                                               &DstValue,
                                               &Length);
        if (!NT_SUCCESS(Status))
        {
            DPRINT1("RtlExpandEnvironmentStrings_U() failed (Status %lx)\n", Status);
            DPRINT1("Length %lu\n", Length);

            if (Buffer)
                LocalFree(Buffer);

            return FALSE;
        }
    }
    else
    {
        RtlInitUnicodeString(&DstValue, lpValue);
    }

    if (!_wcsicmp(lpName, L"TEMP") || !_wcsicmp(lpName, L"TMP"))
    {
        if (GetShortPathNameW(DstValue.Buffer, ShortName, ARRAYSIZE(ShortName)))
        {
            RtlInitUnicodeString(&DstValue, ShortName);
        }
        else
        {
            DPRINT("GetShortPathNameW() failed for %S (Error %lu)\n", DstValue.Buffer, GetLastError());
        }

        DPRINT("Buffer: %S\n", ShortName);
    }

    RtlInitUnicodeString(&Name, lpName);

    DPRINT("Value: %wZ\n", &DstValue);

    Status = RtlSetEnvironmentVariable(Environment,
                                       &Name,
                                       &DstValue);

    if (Buffer)
        LocalFree(Buffer);

    if (!NT_SUCCESS(Status))
    {
        DPRINT1("RtlSetEnvironmentVariable() failed (Status %lx)\n", Status);
        return FALSE;
    }

    return TRUE;
}
