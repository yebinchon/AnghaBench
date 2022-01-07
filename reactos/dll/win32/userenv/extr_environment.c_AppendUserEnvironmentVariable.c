
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {int MaximumLength; int * Buffer; scalar_t__ Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int PWSTR ;
typedef int NTSTATUS ;
typedef char* LPWSTR ;
typedef int BOOL ;


 int DPRINT1 (char*,int ) ;
 int FALSE ;
 int LPTR ;
 int * LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RtlAppendUnicodeToString (TYPE_1__*,char*) ;
 int RtlInitUnicodeString (TYPE_1__*,char*) ;
 int RtlQueryEnvironmentVariable_U (int ,TYPE_1__*,TYPE_1__*) ;
 int RtlSetEnvironmentVariable (int *,TYPE_1__*,TYPE_1__*) ;
 int TRUE ;
 int UNICODE_NULL ;

__attribute__((used)) static
BOOL
AppendUserEnvironmentVariable(PWSTR* Environment,
                              LPWSTR lpName,
                              LPWSTR lpValue)
{
    NTSTATUS Status;
    UNICODE_STRING Name, Value;

    RtlInitUnicodeString(&Name, lpName);

    Value.Length = 0;
    Value.MaximumLength = 1024 * sizeof(WCHAR);
    Value.Buffer = LocalAlloc(LPTR, Value.MaximumLength);
    if (Value.Buffer == ((void*)0))
        return FALSE;

    Value.Buffer[0] = UNICODE_NULL;

    Status = RtlQueryEnvironmentVariable_U(*Environment,
                                           &Name,
                                           &Value);
    if (NT_SUCCESS(Status))
        RtlAppendUnicodeToString(&Value, L";");

    RtlAppendUnicodeToString(&Value, lpValue);

    Status = RtlSetEnvironmentVariable(Environment,
                                       &Name,
                                       &Value);
    LocalFree(Value.Buffer);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("RtlSetEnvironmentVariable() failed (Status %lx)\n", Status);
        return FALSE;
    }

    return TRUE;
}
