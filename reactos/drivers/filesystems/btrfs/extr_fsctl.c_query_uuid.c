
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uuid; } ;
struct TYPE_5__ {TYPE_1__ superblock; } ;
typedef TYPE_2__ device_extension ;
typedef int ULONG ;
typedef int NTSTATUS ;
typedef int BTRFS_UUID ;


 int RtlCopyMemory (void*,int *,int) ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS query_uuid(device_extension* Vcb, void* data, ULONG length) {
    if (length < sizeof(BTRFS_UUID))
        return STATUS_BUFFER_OVERFLOW;

    RtlCopyMemory(data, &Vcb->superblock.uuid, sizeof(BTRFS_UUID));

    return STATUS_SUCCESS;
}
