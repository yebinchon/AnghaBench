
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
typedef int root ;
typedef int device_extension ;
typedef int ULONG ;
struct TYPE_3__ {scalar_t__ NextEntryOffset; scalar_t__ EaValueLength; scalar_t__ EaNameLength; } ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef TYPE_1__ FILE_FULL_EA_INFORMATION ;


 int EA_EA ;
 int EA_EA_HASH ;
 int ExFreePool (int *) ;
 int IoCheckEaBufferValidity (TYPE_1__*,int ,int*) ;
 int NT_SUCCESS (int ) ;
 int WARN (char*,int ,int) ;
 scalar_t__ get_xattr (int *,int *,int ,int ,int ,int **,int *,int ) ;

__attribute__((used)) static ULONG get_ea_len(device_extension* Vcb, root* subvol, uint64_t inode, PIRP Irp) {
    uint8_t* eadata;
    uint16_t len;

    if (get_xattr(Vcb, subvol, inode, EA_EA, EA_EA_HASH, &eadata, &len, Irp)) {
        ULONG offset;
        NTSTATUS Status;

        Status = IoCheckEaBufferValidity((FILE_FULL_EA_INFORMATION*)eadata, len, &offset);

        if (!NT_SUCCESS(Status)) {
            WARN("IoCheckEaBufferValidity returned %08x (error at offset %u)\n", Status, offset);
            ExFreePool(eadata);
            return 0;
        } else {
            FILE_FULL_EA_INFORMATION* eainfo;
            ULONG ealen;

            ealen = 4;
            eainfo = (FILE_FULL_EA_INFORMATION*)eadata;
            do {
                ealen += 5 + eainfo->EaNameLength + eainfo->EaValueLength;

                if (eainfo->NextEntryOffset == 0)
                    break;

                eainfo = (FILE_FULL_EA_INFORMATION*)(((uint8_t*)eainfo) + eainfo->NextEntryOffset);
            } while (1);

            ExFreePool(eadata);

            return ealen;
        }
    } else
        return 0;
}
