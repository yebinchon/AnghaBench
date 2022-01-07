
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_blocks; TYPE_1__* i_sb; } ;
typedef int handle_t ;
typedef int ext4_fsblk_t ;
struct TYPE_2__ {int s_blocksize; int s_priv; } ;
typedef int PEXT2_IRP_CONTEXT ;


 int Ext2FreeBlock (int ,int ,int ,int) ;

__attribute__((used)) static void ext4_free_blocks(void *icb, handle_t *handle, struct inode *inode, void *fake,
  ext4_fsblk_t block, int count, int flags)
{
 Ext2FreeBlock((PEXT2_IRP_CONTEXT)icb, inode->i_sb->s_priv, block, count);
 inode->i_blocks -= count * (inode->i_sb->s_blocksize >> 9);
 return;
}
