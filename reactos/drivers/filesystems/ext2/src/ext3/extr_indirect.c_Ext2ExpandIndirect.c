
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_14__ {scalar_t__* i_block; } ;
struct TYPE_13__ {TYPE_5__ Inode; } ;
struct TYPE_12__ {scalar_t__ max_data_blocks; scalar_t__* max_blocks_per_layer; } ;
struct TYPE_11__ {int QuadPart; } ;
typedef int PULONG ;
typedef TYPE_1__* PLARGE_INTEGER ;
typedef TYPE_2__* PEXT2_VCB ;
typedef TYPE_3__* PEXT2_MCB ;
typedef int PEXT2_IRP_CONTEXT ;
typedef int NTSTATUS ;
typedef int LONGLONG ;


 int BLOCK_BITS ;
 scalar_t__ EXT2_BLOCK_TYPES ;
 scalar_t__ EXT2_NDIR_BLOCKS ;
 int Ext2ExpandBlock (int ,TYPE_2__*,TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__*,scalar_t__*) ;
 int Ext2SaveInode (int ,TYPE_2__*,TYPE_5__*) ;
 int NT_SUCCESS (int ) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;

NTSTATUS
Ext2ExpandIndirect(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb,
    PEXT2_MCB Mcb,
    ULONG Start,
    ULONG End,
    PLARGE_INTEGER Size
)
{
    NTSTATUS Status = STATUS_SUCCESS;

    ULONG Layer = 0;
    ULONG Extra = 0;
    ULONG Hint = 0;
    ULONG Slot = 0;
    ULONG Base = 0;

    Extra = End - Start;


    if (End > Vcb->max_data_blocks) {
        return STATUS_INVALID_PARAMETER;
    }

    for (Layer = 0; Layer < EXT2_BLOCK_TYPES && Extra; Layer++) {

        if (Start >= Vcb->max_blocks_per_layer[Layer]) {

            Base += Vcb->max_blocks_per_layer[Layer];
            Start -= Vcb->max_blocks_per_layer[Layer];

        } else {


            if (Layer == 0) {
                Base = Slot = Start;
            } else {
                Slot = Layer + EXT2_NDIR_BLOCKS - 1;
            }


            if (Hint == 0) {
                if (Mcb->Inode.i_block[Slot] != 0) {
                    Hint = Mcb->Inode.i_block[Slot];
                } else if (Slot > 1) {
                    Hint = Mcb->Inode.i_block[Slot-1];
                }
            }


            Status = Ext2ExpandBlock(
                         IrpContext,
                         Vcb,
                         Mcb,
                         Base,
                         Layer,
                         Start,
                         (Layer == 0) ? (Vcb->max_blocks_per_layer[Layer] - Start) : 1,
                         (PULONG)&Mcb->Inode.i_block[Slot],
                         &Hint,
                         &Extra
                     );
            if (!NT_SUCCESS(Status)) {
                break;
            }

            Start = 0;
            if (Layer == 0) {
                Base = 0;
            }
            Base += Vcb->max_blocks_per_layer[Layer];
        }
    }

    Size->QuadPart = ((LONGLONG)(End - Extra)) << BLOCK_BITS;


    Ext2SaveInode(IrpContext, Vcb, &Mcb->Inode);

    return Status;
}
