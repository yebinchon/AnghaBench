
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; TYPE_1__* i_sb; } ;
typedef int ext4_fsblk_t ;
struct TYPE_2__ {int s_priv; } ;
typedef int PEXT2_VCB ;


 int BLOCKS_PER_GROUP ;

__attribute__((used)) static inline ext4_fsblk_t ext4_inode_to_goal_block(struct inode *inode)
{
 PEXT2_VCB Vcb;
 Vcb = inode->i_sb->s_priv;
 return (inode->i_ino - 1) / BLOCKS_PER_GROUP;
}
