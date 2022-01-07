
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_priv; } ;
struct inode {int i_priv; struct super_block* i_sb; } ;
typedef int ULONGLONG ;
struct TYPE_4__ {int Lba; } ;
typedef int PEXT2_VCB ;
typedef int PEXT2_MCB ;
typedef TYPE_1__* PEXT2_EXTENT ;
typedef int NTSTATUS ;


 int BLOCK_BITS ;
 int BLOCK_SIZE ;
 int Ext2BuildExtents (int *,int ,int ,int,int ,int ,TYPE_1__**) ;
 int Ext2FreeExtent (TYPE_1__*) ;
 int FALSE ;
 int NT_SUCCESS (int ) ;

ULONGLONG bmap(struct inode *i, ULONGLONG b)
{
    ULONGLONG lcn = 0;
    struct super_block *s = i->i_sb;

    PEXT2_MCB Mcb = (PEXT2_MCB)i->i_priv;
    PEXT2_VCB Vcb = (PEXT2_VCB)s->s_priv;
    PEXT2_EXTENT extent = ((void*)0);
    ULONGLONG offset = (ULONGLONG)b;
    NTSTATUS status;

    if (!Mcb || !Vcb) {
        goto errorout;
    }

    offset <<= BLOCK_BITS;
    status = Ext2BuildExtents(
                 ((void*)0),
                 Vcb,
                 Mcb,
                 offset,
                 BLOCK_SIZE,
                 FALSE,
                 &extent
             );

    if (!NT_SUCCESS(status)) {
        goto errorout;
    }

    if (extent == ((void*)0)) {
        goto errorout;
    }

    lcn = (unsigned long)(extent->Lba >> BLOCK_BITS);

errorout:

    if (extent) {
        Ext2FreeExtent(extent);
    }

    return lcn;
}
