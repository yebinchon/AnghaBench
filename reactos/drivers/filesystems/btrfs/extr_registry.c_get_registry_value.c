
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int WCHAR ;
typedef int UNICODE_STRING ;
typedef scalar_t__ ULONG ;
struct TYPE_5__ {scalar_t__ Type; scalar_t__ DataLength; int DataOffset; } ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_1__ KEY_VALUE_FULL_INFORMATION ;
typedef int HANDLE ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int ExFreePool (TYPE_1__*) ;
 int KeyValueFullInformation ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 int PagedPool ;
 int RtlCopyMemory (void*,int *,scalar_t__) ;
 int RtlInitUnicodeString (int *,int *) ;
 scalar_t__ STATUS_BUFFER_OVERFLOW ;
 scalar_t__ STATUS_BUFFER_TOO_SMALL ;
 scalar_t__ STATUS_OBJECT_NAME_NOT_FOUND ;
 int ZwClose (int ) ;
 scalar_t__ ZwDeleteValueKey (int ,int *) ;
 scalar_t__ ZwQueryValueKey (int ,int *,int ,TYPE_1__*,scalar_t__,scalar_t__*) ;
 scalar_t__ ZwSetValueKey (int ,int *,int ,scalar_t__,void*,scalar_t__) ;

__attribute__((used)) static void get_registry_value(HANDLE h, WCHAR* string, ULONG type, void* val, ULONG size) {
    ULONG kvfilen;
    KEY_VALUE_FULL_INFORMATION* kvfi;
    UNICODE_STRING us;
    NTSTATUS Status;

    RtlInitUnicodeString(&us, string);

    kvfi = ((void*)0);
    kvfilen = 0;
    Status = ZwQueryValueKey(h, &us, KeyValueFullInformation, kvfi, kvfilen, &kvfilen);

    if ((Status == STATUS_BUFFER_TOO_SMALL || Status == STATUS_BUFFER_OVERFLOW) && kvfilen > 0) {
        kvfi = ExAllocatePoolWithTag(PagedPool, kvfilen, ALLOC_TAG);

        if (!kvfi) {
            ERR("out of memory\n");
            ZwClose(h);
            return;
        }

        Status = ZwQueryValueKey(h, &us, KeyValueFullInformation, kvfi, kvfilen, &kvfilen);

        if (NT_SUCCESS(Status)) {
            if (kvfi->Type == type && kvfi->DataLength >= size) {
                RtlCopyMemory(val, ((uint8_t*)kvfi) + kvfi->DataOffset, size);
            } else {
                Status = ZwDeleteValueKey(h, &us);
                if (!NT_SUCCESS(Status)) {
                    ERR("ZwDeleteValueKey returned %08x\n", Status);
                }

                Status = ZwSetValueKey(h, &us, 0, type, val, size);
                if (!NT_SUCCESS(Status)) {
                    ERR("ZwSetValueKey returned %08x\n", Status);
                }
            }
        }

        ExFreePool(kvfi);
    } else if (Status == STATUS_OBJECT_NAME_NOT_FOUND) {
        Status = ZwSetValueKey(h, &us, 0, type, val, size);

        if (!NT_SUCCESS(Status)) {
            ERR("ZwSetValueKey returned %08x\n", Status);
        }
    } else {
        ERR("ZwQueryValueKey returned %08x\n", Status);
    }
}
