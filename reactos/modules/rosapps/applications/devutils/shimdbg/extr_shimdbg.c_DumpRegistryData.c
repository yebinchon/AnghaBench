
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int DataLength; scalar_t__ Type; int Data; } ;
typedef TYPE_1__* PKEY_VALUE_PARTIAL_INFORMATION ;
typedef scalar_t__ NTSTATUS ;
typedef int KeyValueObject ;
typedef TYPE_1__ KEY_VALUE_PARTIAL_INFORMATION ;
typedef scalar_t__ HANDLE ;


 int AppCompatCacheValue ;
 int AppCompatKeyAttributes ;
 int KEY_QUERY_VALUE ;
 int KeyValuePartialInformation ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 int NtClose (scalar_t__) ;
 scalar_t__ NtOpenKey (scalar_t__*,int ,int *) ;
 scalar_t__ NtQueryValueKey (scalar_t__,int *,int ,TYPE_1__*,int,int*) ;
 scalar_t__ REG_BINARY ;
 int RtlComputeCrc32 (int ,int ,int) ;
 scalar_t__ STATUS_BUFFER_OVERFLOW ;
 int free (TYPE_1__*) ;
 int hexdump (int ,int) ;
 TYPE_1__* malloc (int) ;
 int xprintf (char*,...) ;

void DumpRegistryData(int IncludeDump)
{
    HANDLE KeyHandle;
    NTSTATUS Status;
    KEY_VALUE_PARTIAL_INFORMATION KeyValueObject;
    PKEY_VALUE_PARTIAL_INFORMATION KeyValueInformation = &KeyValueObject;
    ULONG KeyInfoSize, ResultSize;

    xprintf("Dumping AppCompatCache registry key\n");

    Status = NtOpenKey(&KeyHandle, KEY_QUERY_VALUE, &AppCompatKeyAttributes);

    Status = NtQueryValueKey(KeyHandle, &AppCompatCacheValue,
                KeyValuePartialInformation, KeyValueInformation,
                sizeof(KeyValueObject), &ResultSize);

    if (Status == STATUS_BUFFER_OVERFLOW)
    {
        KeyInfoSize = sizeof(KEY_VALUE_PARTIAL_INFORMATION) + KeyValueInformation->DataLength;
        KeyValueInformation = malloc(KeyInfoSize);
        if (KeyValueInformation != ((void*)0))
        {
            Status = NtQueryValueKey(KeyHandle, &AppCompatCacheValue,
                        KeyValuePartialInformation, KeyValueInformation,
                        KeyInfoSize, &ResultSize);
        }
    }

    if (NT_SUCCESS(Status) && KeyValueInformation->Type == REG_BINARY)
    {
        ULONG crc;
        if (IncludeDump)
            hexdump(KeyValueInformation->Data, KeyValueInformation->DataLength);
        crc = RtlComputeCrc32(0, KeyValueInformation->Data, KeyValueInformation->DataLength);
        xprintf("Len: %lu, Crc: 0x%lx\n", KeyValueInformation->DataLength, crc);
    }
    else
    {
        xprintf("Failed reading AppCompatCache from registry (0x%lx)\n", Status);
    }

    if (KeyValueInformation != &KeyValueObject)
        free(KeyValueInformation);

    if (KeyHandle)
        NtClose(KeyHandle);
}
