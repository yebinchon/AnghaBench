
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* ext2_inode_scan ;
typedef int errcode_t ;
typedef scalar_t__ blk64_t ;
typedef TYPE_3__* badblocks_list ;
struct TYPE_7__ {scalar_t__* list; size_t num; } ;
struct TYPE_6__ {scalar_t__ current_block; size_t bad_block_ptr; int scan_flags; TYPE_1__* fs; } ;
struct TYPE_5__ {TYPE_3__* badblocks; } ;


 int EXT2_SF_BAD_INODE_BLK ;
 int EXT2_SF_CHK_BADBLOCKS ;

__attribute__((used)) static errcode_t check_for_inode_bad_blocks(ext2_inode_scan scan,
         blk64_t *num_blocks)
{
 blk64_t blk = scan->current_block;
 badblocks_list bb = scan->fs->badblocks;





 if (blk == 0)
  return 0;







 while (blk > bb->list[scan->bad_block_ptr]) {
  if (++scan->bad_block_ptr >= bb->num) {
   scan->scan_flags &= ~EXT2_SF_CHK_BADBLOCKS;
   return 0;
  }
 }
 if (blk == bb->list[scan->bad_block_ptr]) {
  scan->scan_flags |= EXT2_SF_BAD_INODE_BLK;
  *num_blocks = 1;
  if (++scan->bad_block_ptr >= bb->num)
   scan->scan_flags &= ~EXT2_SF_CHK_BADBLOCKS;
  return 0;
 }







 if ((blk + *num_blocks) > bb->list[scan->bad_block_ptr])
  *num_blocks = (int) (bb->list[scan->bad_block_ptr] - blk);

 return 0;
}
