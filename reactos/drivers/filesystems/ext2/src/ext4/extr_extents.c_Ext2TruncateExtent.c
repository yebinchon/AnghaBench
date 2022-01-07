
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ loff_t ;
typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_15__ {scalar_t__ i_size; } ;
struct TYPE_14__ {TYPE_4__ Inode; int Extents; int Flags; } ;
struct TYPE_13__ {scalar_t__ max_data_blocks; } ;
struct TYPE_12__ {int QuadPart; } ;
typedef TYPE_1__* PLARGE_INTEGER ;
typedef TYPE_2__* PEXT2_VCB ;
typedef TYPE_3__* PEXT2_MCB ;
typedef int PEXT2_IRP_CONTEXT ;
typedef int NTSTATUS ;


 int BLOCK_BITS ;
 int BLOCK_SIZE ;
 int ClearFlag (int ,int ) ;
 int Ext2ClearAllExtents (int *) ;
 int Ext2RemoveBlockExtent (TYPE_2__*,TYPE_3__*,scalar_t__,scalar_t__) ;
 int Ext2SaveInode (int ,TYPE_2__*,TYPE_4__*) ;
 int MCB_ZONE_INITED ;
 int NT_SUCCESS (int ) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int ext4_ext_truncate (int ,TYPE_4__*,scalar_t__) ;

NTSTATUS
Ext2TruncateExtent(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb,
    PEXT2_MCB Mcb,
    PLARGE_INTEGER Size
    )
{
    NTSTATUS Status = STATUS_SUCCESS;

    ULONG Extra = 0;
    ULONG Wanted = 0;
    ULONG End;
    ULONG Removed;
    int err;


    End = Vcb->max_data_blocks;
    Wanted = (ULONG)((Size->QuadPart + BLOCK_SIZE - 1) >> BLOCK_BITS);


    Extra = End - Wanted;

    err = ext4_ext_truncate(IrpContext, &Mcb->Inode, Wanted);
    if (err == 0) {
        if (!Ext2RemoveBlockExtent(Vcb, Mcb, Wanted, Extra)) {
            ClearFlag(Mcb->Flags, MCB_ZONE_INITED);
            Ext2ClearAllExtents(&Mcb->Extents);
        }
        Extra = 0;
    } else {
        Status = STATUS_INSUFFICIENT_RESOURCES;
    }

    if (!NT_SUCCESS(Status)) {
        Size->QuadPart += ((ULONGLONG)Extra << BLOCK_BITS);
    }

    if (Mcb->Inode.i_size > (loff_t)(Size->QuadPart))
        Mcb->Inode.i_size = (loff_t)(Size->QuadPart);


    Ext2SaveInode(IrpContext, Vcb, &Mcb->Inode);

    return Status;
}
