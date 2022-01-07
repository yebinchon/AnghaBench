
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int superblock ;
struct TYPE_4__ {scalar_t__ num_bytes; } ;
struct TYPE_5__ {int fileobj; int devobj; TYPE_1__ devitem; } ;
typedef TYPE_2__ device ;
typedef int NTSTATUS ;


 int ALLOC_TAG ;
 int ERR (char*) ;
 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (int *) ;
 int NT_SUCCESS (int ) ;
 int PagedPool ;
 int RtlZeroMemory (int *,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 scalar_t__* superblock_addrs ;
 int write_data_phys (int ,int ,scalar_t__,int *,int) ;

__attribute__((used)) static NTSTATUS remove_superblocks(device* dev) {
    NTSTATUS Status;
    superblock* sb;
    int i = 0;

    sb = ExAllocatePoolWithTag(PagedPool, sizeof(superblock), ALLOC_TAG);
    if (!sb) {
        ERR("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    RtlZeroMemory(sb, sizeof(superblock));

    while (superblock_addrs[i] > 0 && dev->devitem.num_bytes >= superblock_addrs[i] + sizeof(superblock)) {
        Status = write_data_phys(dev->devobj, dev->fileobj, superblock_addrs[i], sb, sizeof(superblock));

        if (!NT_SUCCESS(Status)) {
            ExFreePool(sb);
            return Status;
        }

        i++;
    }

    ExFreePool(sb);

    return STATUS_SUCCESS;
}
