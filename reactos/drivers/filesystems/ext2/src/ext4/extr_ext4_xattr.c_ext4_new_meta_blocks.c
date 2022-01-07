
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_blocks; TYPE_1__* i_sb; } ;
typedef int ext4_fsblk_t ;
typedef int ULONG ;
struct TYPE_2__ {int s_blocksize; int s_priv; } ;
typedef int PEXT2_IRP_CONTEXT ;
typedef int NTSTATUS ;


 int Ext2LinuxError (int ) ;
 int Ext2NewBlock (int ,int ,int ,int,int*,int*) ;
 int NT_SUCCESS (int ) ;

__attribute__((used)) static ext4_fsblk_t ext4_new_meta_blocks(void *icb, struct inode *inode,
 ext4_fsblk_t goal,
 unsigned int flags,
 unsigned long *count, int *errp)
{
 NTSTATUS status;
 ULONG blockcnt = (count) ? *count : 1;
 ULONG block = 0;

 status = Ext2NewBlock((PEXT2_IRP_CONTEXT)icb,
  inode->i_sb->s_priv,
  0, (ULONG)goal,
  &block,
  &blockcnt);
 if (count)
  *count = blockcnt;

 if (!NT_SUCCESS(status)) {
  *errp = Ext2LinuxError(status);
  return 0;
 }
 inode->i_blocks += (blockcnt * (inode->i_sb->s_blocksize >> 9));
 return block;
}
