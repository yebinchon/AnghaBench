
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef scalar_t__ ULONG ;
struct TYPE_3__ {int KeyHandle; } ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__* PLSA_DB_OBJECT ;
typedef int OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef int LPWSTR ;
typedef int * LPVOID ;
typedef int HANDLE ;


 int InitializeObjectAttributes (int *,int *,int ,int ,int *) ;
 int KEY_QUERY_VALUE ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 int NtClose (int ) ;
 scalar_t__ NtOpenKey (int *,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int RtlInitUnicodeString (int *,int ) ;
 scalar_t__ RtlpNtQueryValueKey (int ,int *,int *,scalar_t__*,int ) ;
 scalar_t__ STATUS_BUFFER_OVERFLOW ;
 scalar_t__ STATUS_SUCCESS ;

NTSTATUS
LsapGetObjectAttribute(PLSA_DB_OBJECT DbObject,
                       LPWSTR AttributeName,
                       LPVOID AttributeData,
                       PULONG AttributeSize)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    UNICODE_STRING KeyName;
    HANDLE AttributeKey;
    ULONG ValueSize;
    NTSTATUS Status;

    RtlInitUnicodeString(&KeyName,
                         AttributeName);

    InitializeObjectAttributes(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               DbObject->KeyHandle,
                               ((void*)0));

    Status = NtOpenKey(&AttributeKey,
                       KEY_QUERY_VALUE,
                       &ObjectAttributes);
    if (!NT_SUCCESS(Status))
    {
        return Status;
    }

    ValueSize = *AttributeSize;
    Status = RtlpNtQueryValueKey(AttributeKey,
                                 ((void*)0),
                                 ((void*)0),
                                 &ValueSize,
                                 0);
    if (!NT_SUCCESS(Status) && Status != STATUS_BUFFER_OVERFLOW)
    {
        goto Done;
    }

    if (AttributeData == ((void*)0) || *AttributeSize == 0)
    {
        *AttributeSize = ValueSize;
        Status = STATUS_SUCCESS;
        goto Done;
    }
    else if (*AttributeSize < ValueSize)
    {
        *AttributeSize = ValueSize;
        Status = STATUS_BUFFER_OVERFLOW;
        goto Done;
    }

    Status = RtlpNtQueryValueKey(AttributeKey,
                                 ((void*)0),
                                 AttributeData,
                                 &ValueSize,
                                 0);
    if (NT_SUCCESS(Status))
    {
        *AttributeSize = ValueSize;
    }

Done:
    NtClose(AttributeKey);

    return Status;
}
