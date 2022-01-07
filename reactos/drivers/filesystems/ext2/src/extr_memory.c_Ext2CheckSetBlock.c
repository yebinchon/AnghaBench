
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct buffer_head {scalar_t__ b_data; } ;
typedef int ULONG ;
struct TYPE_4__ {int s_groups_count; } ;
struct TYPE_5__ {TYPE_1__ sbi; int sb; } ;
typedef int RTL_BITMAP ;
typedef int PULONG ;
typedef TYPE_2__* PEXT2_VCB ;
typedef int PEXT2_IRP_CONTEXT ;
typedef int PEXT2_GROUP_DESC ;
typedef scalar_t__ LONGLONG ;
typedef int BOOLEAN ;


 int BLOCKS_PER_GROUP ;
 int DbgBreak () ;
 scalar_t__ EXT2_FIRST_DATA_BLOCK ;
 int FALSE ;
 scalar_t__ RtlCheckBit (int *,int) ;
 int RtlInitializeBitMap (int *,int ,int) ;
 int RtlSetBits (int *,int,int) ;
 int TOTAL_BLOCKS ;
 int TRUE ;
 int ext4_block_bitmap (int *,int ) ;
 int ext4_get_group_desc (int *,int,struct buffer_head**) ;
 int fini_bh (struct buffer_head**) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 struct buffer_head* sb_getblk (int *,int ) ;

BOOLEAN
Ext2CheckSetBlock(PEXT2_IRP_CONTEXT IrpContext, PEXT2_VCB Vcb, LONGLONG Block)
{
    PEXT2_GROUP_DESC gd;
    struct buffer_head *gb = ((void*)0);
    struct buffer_head *bh = ((void*)0);
    ULONG group, dwBlk, Length;
    RTL_BITMAP bitmap;
    BOOLEAN bModified = FALSE;

    group = (ULONG)(Block - EXT2_FIRST_DATA_BLOCK) / BLOCKS_PER_GROUP;
    dwBlk = (ULONG)(Block - EXT2_FIRST_DATA_BLOCK) % BLOCKS_PER_GROUP;

    gd = ext4_get_group_desc(&Vcb->sb, group, &gb);
    if (!gd) {
        return FALSE;
    }
    bh = sb_getblk(&Vcb->sb, ext4_block_bitmap(&Vcb->sb, gd));

    if (group == Vcb->sbi.s_groups_count - 1) {
        Length = (ULONG)(TOTAL_BLOCKS % BLOCKS_PER_GROUP);


        if (Length == 0)
            Length = BLOCKS_PER_GROUP;
    } else {
        Length = BLOCKS_PER_GROUP;
    }

    if (dwBlk >= Length) {
        fini_bh(&gb);
        fini_bh(&bh);
        return FALSE;
    }


    RtlInitializeBitMap(&bitmap, (PULONG)bh->b_data, Length);

    if (RtlCheckBit(&bitmap, dwBlk) == 0) {
        DbgBreak();
        RtlSetBits(&bitmap, dwBlk, 1);
        bModified = TRUE;
        mark_buffer_dirty(bh);
    }

    fini_bh(&gb);
    fini_bh(&bh);

    return (!bModified);
}
