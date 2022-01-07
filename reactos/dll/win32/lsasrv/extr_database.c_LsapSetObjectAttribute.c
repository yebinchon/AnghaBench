
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_3__ {int KeyHandle; } ;
typedef TYPE_1__* PLSA_DB_OBJECT ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int LPWSTR ;
typedef int LPVOID ;
typedef int HANDLE ;


 int ERR (char*,int ,int ) ;
 int InitializeObjectAttributes (int *,int *,int ,int ,int *) ;
 int KEY_SET_VALUE ;
 int NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtCreateKey (int *,int ,int *,int ,int *,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int REG_NONE ;
 int REG_OPTION_NON_VOLATILE ;
 int RtlInitUnicodeString (int *,int ) ;
 int RtlpNtSetValueKey (int ,int ,int ,int ) ;

NTSTATUS
LsapSetObjectAttribute(PLSA_DB_OBJECT DbObject,
                       LPWSTR AttributeName,
                       LPVOID AttributeData,
                       ULONG AttributeSize)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    UNICODE_STRING KeyName;
    HANDLE AttributeKey;
    NTSTATUS Status;

    RtlInitUnicodeString(&KeyName,
                         AttributeName);

    InitializeObjectAttributes(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               DbObject->KeyHandle,
                               ((void*)0));

    Status = NtCreateKey(&AttributeKey,
                         KEY_SET_VALUE,
                         &ObjectAttributes,
                         0,
                         ((void*)0),
                         REG_OPTION_NON_VOLATILE,
                         ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        ERR("NtCreateKey failed for '%S' with status 0x%lx\n",
            AttributeName, Status);
        return Status;
    }

    Status = RtlpNtSetValueKey(AttributeKey,
                               REG_NONE,
                               AttributeData,
                               AttributeSize);

    NtClose(AttributeKey);

    if (!NT_SUCCESS(Status))
    {
        ERR("RtlpNtSetValueKey failed for '%S' with status 0x%lx\n",
            AttributeName, Status);
    }

    return Status;
}
