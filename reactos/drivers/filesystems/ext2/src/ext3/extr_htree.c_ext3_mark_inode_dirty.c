
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct ext2_icb {int dummy; } ;
struct TYPE_2__ {int s_priv; } ;


 int ENOMEM ;
 scalar_t__ Ext2SaveInode (struct ext2_icb*,int ,struct inode*) ;

int ext3_mark_inode_dirty(struct ext2_icb *icb, struct inode *in)
{
    if (Ext2SaveInode(icb, in->i_sb->s_priv, in))
        return 0;

    return -ENOMEM;
}
