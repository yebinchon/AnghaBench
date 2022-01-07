
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_blocks; TYPE_1__* i_sb; } ;
typedef scalar_t__ ext4_fsblk_t ;
typedef int ULONG ;
struct TYPE_2__ {int s_blocksize; int s_priv; } ;
typedef int PEXT2_IRP_CONTEXT ;


 int Ext2FreeBlock (int ,int ,int ,int) ;

__attribute__((used)) static void ext4_free_blocks(void *icb, struct inode *inode,
 ext4_fsblk_t block, int count, int flags)
{
 Ext2FreeBlock((PEXT2_IRP_CONTEXT)icb, inode->i_sb->s_priv, (ULONG)block, count);
 inode->i_blocks -= count * (inode->i_sb->s_blocksize >> 9);
 return;
}
