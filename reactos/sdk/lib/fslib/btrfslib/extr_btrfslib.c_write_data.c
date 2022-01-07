
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef size_t uint16_t ;
struct TYPE_8__ {scalar_t__ offset; TYPE_1__* chunk_item; } ;
typedef TYPE_2__ btrfs_chunk ;
typedef int ULONG ;
struct TYPE_10__ {scalar_t__ offset; } ;
struct TYPE_9__ {scalar_t__ QuadPart; } ;
struct TYPE_7__ {size_t num_stripes; } ;
typedef int NTSTATUS ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef TYPE_4__ CHUNK_ITEM_STRIPE ;


 int NT_SUCCESS (int ) ;
 int NtWriteFile (int ,int *,int *,int *,int *,void*,int ,TYPE_3__*,int *) ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS write_data(HANDLE h, uint64_t address, btrfs_chunk* c, void* data, ULONG size) {
    NTSTATUS Status;
    uint16_t i;
    IO_STATUS_BLOCK iosb;
    LARGE_INTEGER off;
    CHUNK_ITEM_STRIPE* cis;

    cis = (CHUNK_ITEM_STRIPE*)&c->chunk_item[1];

    for (i = 0; i < c->chunk_item->num_stripes; i++) {
        off.QuadPart = cis[i].offset + address - c->offset;

        Status = NtWriteFile(h, ((void*)0), ((void*)0), ((void*)0), &iosb, data, size, &off, ((void*)0));
        if (!NT_SUCCESS(Status))
            return Status;
    }

    return STATUS_SUCCESS;
}
