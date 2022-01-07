
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct ext2_icb {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int ULONG ;
struct TYPE_8__ {int s_priv; } ;
struct TYPE_7__ {int Inode; struct TYPE_7__* Target; } ;
typedef TYPE_1__* PEXT2_MCB ;
typedef int NTSTATUS ;


 TYPE_1__* CONTAINING_RECORD (struct inode*,int ,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int EXT2_MCB ;
 int Ext2LinuxError (int ) ;
 int Ext2MapExtent (struct ext2_icb*,int ,TYPE_1__*,unsigned long,int ,int *,int *) ;
 int Ext2MapIndirect (struct ext2_icb*,int ,TYPE_1__*,unsigned long,int ,int *,int *) ;
 int FALSE ;
 scalar_t__ INODE_HAS_EXTENT (int *) ;
 int Inode ;
 scalar_t__ IsMcbSymLink (TYPE_1__*) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int __brelse (struct buffer_head*) ;
 int bh_submit_read (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 struct buffer_head* sb_getblk (TYPE_2__*,int ) ;

struct buffer_head *ext3_bread(struct ext2_icb *icb, struct inode *inode,
                                           unsigned long block, int *err)
{
    struct buffer_head * bh = ((void*)0);
    NTSTATUS status = STATUS_SUCCESS;
    ULONG lbn = 0, num = 0;

    PEXT2_MCB Mcb = CONTAINING_RECORD(inode, EXT2_MCB, Inode);


    if (((void*)0) != Mcb && IsMcbSymLink(Mcb))
        Mcb = Mcb->Target;
    if (((void*)0) == Mcb) {
        *err = -EINVAL;
        return ((void*)0);
    }


    if (INODE_HAS_EXTENT(&Mcb->Inode)) {
        status = Ext2MapExtent(icb, inode->i_sb->s_priv,
                               Mcb, block, FALSE,
                               &lbn, &num);
    } else {
        status = Ext2MapIndirect(icb, inode->i_sb->s_priv,
                                 Mcb, block, FALSE,
                                 &lbn, &num);
    }

    if (!NT_SUCCESS(status)) {
        *err = Ext2LinuxError(status);
        return bh;
    }

    bh = sb_getblk(inode->i_sb, lbn);
    if (!bh) {
        *err = -ENOMEM;
        return bh;
    }
    if (buffer_uptodate(bh))
        return bh;

    *err = bh_submit_read(bh);
    if (*err) {
     __brelse(bh);
     return ((void*)0);
    }
    return bh;
}
