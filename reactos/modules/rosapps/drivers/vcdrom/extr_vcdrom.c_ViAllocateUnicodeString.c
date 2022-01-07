
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_3__ {int * Buffer; int MaximumLength; scalar_t__ Length; } ;
typedef int * PVOID ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef int NTSTATUS ;


 int * ExAllocatePoolWithTag (int ,int ,char) ;
 int NonPagedPool ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;

NTSTATUS
ViAllocateUnicodeString(USHORT BufferLength, PUNICODE_STRING UnicodeString)
{
    PVOID Buffer;


    Buffer = ExAllocatePoolWithTag(NonPagedPool, BufferLength, ' dCV');

    UnicodeString->Length = 0;
    UnicodeString->MaximumLength = BufferLength;
    UnicodeString->Buffer = Buffer;


    if (Buffer != ((void*)0))
    {
        return STATUS_SUCCESS;
    }

    return STATUS_NO_MEMORY;
}
