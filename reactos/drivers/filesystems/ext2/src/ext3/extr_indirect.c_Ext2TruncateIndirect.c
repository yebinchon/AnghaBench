
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef scalar_t__ loff_t ;
typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_13__ {scalar_t__ i_size; int * i_block; } ;
struct TYPE_16__ {TYPE_12__ Inode; } ;
struct TYPE_15__ {scalar_t__ max_data_blocks; scalar_t__* max_blocks_per_layer; } ;
struct TYPE_14__ {int QuadPart; } ;
typedef int * PULONG ;
typedef TYPE_1__* PLARGE_INTEGER ;
typedef TYPE_2__* PEXT2_VCB ;
typedef TYPE_3__* PEXT2_MCB ;
typedef int PEXT2_IRP_CONTEXT ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 int BLOCK_BITS ;
 int BLOCK_SIZE ;
 scalar_t__ EXT2_BLOCK_TYPES ;
 scalar_t__ EXT2_NDIR_BLOCKS ;
 int Ext2SaveInode (int ,TYPE_2__*,TYPE_12__*) ;
 int Ext2TruncateBlock (int ,TYPE_2__*,TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,scalar_t__*) ;
 int Ext2TruncateIndirectFast (int ,TYPE_2__*,TYPE_3__*) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;

NTSTATUS
Ext2TruncateIndirect(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb,
    PEXT2_MCB Mcb,
    PLARGE_INTEGER Size
)
{
    NTSTATUS Status = STATUS_SUCCESS;

    ULONG Layer = 0;

    ULONG Extra = 0;
    ULONG Wanted = 0;
    ULONG End;
    ULONG Base;

    ULONG SizeArray = 0;
    PULONG BlockArray = ((void*)0);


    End = Base = Vcb->max_data_blocks;
    Wanted = (ULONG)((Size->QuadPart + BLOCK_SIZE - 1) >> BLOCK_BITS);


    if (Wanted == 0) {
        Status = Ext2TruncateIndirectFast(IrpContext, Vcb, Mcb);
        if (NT_SUCCESS(Status))
            goto errorout;
    }


    Extra = End - Wanted;

    for (Layer = EXT2_BLOCK_TYPES; Layer > 0 && Extra; Layer--) {

        if (Vcb->max_blocks_per_layer[Layer - 1] == 0) {
            continue;
        }

        Base -= Vcb->max_blocks_per_layer[Layer - 1];

        if (Layer - 1 == 0) {
            BlockArray = (PULONG)&Mcb->Inode.i_block[0];
            SizeArray = End;
            ASSERT(End == EXT2_NDIR_BLOCKS && Base == 0);
        } else {
            BlockArray = (PULONG)&Mcb->Inode.i_block[EXT2_NDIR_BLOCKS - 1 + Layer - 1];
            SizeArray = 1;
        }

        Status = Ext2TruncateBlock(
                     IrpContext,
                     Vcb,
                     Mcb,
                     Base,
                     End - Base - 1,
                     Layer - 1,
                     SizeArray,
                     BlockArray,
                     &Extra
                 );
        if (!NT_SUCCESS(Status)) {
            break;
        }

        End = Base;
    }

errorout:

    if (!NT_SUCCESS(Status)) {
        Size->QuadPart += ((ULONGLONG)Extra << BLOCK_BITS);
    }


    if (Mcb->Inode.i_size > (loff_t)(Size->QuadPart))
        Mcb->Inode.i_size = (loff_t)(Size->QuadPart);
    Ext2SaveInode(IrpContext, Vcb, &Mcb->Inode);

    return Status;
}
