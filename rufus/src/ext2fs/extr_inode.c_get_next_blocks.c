
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* ext2_inode_scan ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_7__ {int inode_buffer_blocks; int blocks_left; int scan_flags; int bytes_left; scalar_t__ current_block; TYPE_1__* fs; int inode_buffer; int ptr; } ;
struct TYPE_6__ {size_t blocksize; int io; } ;


 scalar_t__ EXT2_ET_NEXT_INODE_READ ;
 int EXT2_SF_BAD_EXTRA_BYTES ;
 int EXT2_SF_BAD_INODE_BLK ;
 int EXT2_SF_CHK_BADBLOCKS ;
 scalar_t__ check_for_inode_bad_blocks (TYPE_2__*,int*) ;
 int check_inode_block_sanity (TYPE_2__*,int) ;
 scalar_t__ io_channel_read_blk64 (int ,scalar_t__,int,int ) ;
 int memset (int ,int ,size_t) ;

__attribute__((used)) static errcode_t get_next_blocks(ext2_inode_scan scan)
{
 blk64_t num_blocks;
 errcode_t retval;






 num_blocks = scan->inode_buffer_blocks;
 if (num_blocks > scan->blocks_left)
  num_blocks = scan->blocks_left;





 if (scan->scan_flags & EXT2_SF_BAD_INODE_BLK) {
  if (scan->bytes_left)
   scan->scan_flags |= EXT2_SF_BAD_EXTRA_BYTES;
  scan->scan_flags &= ~EXT2_SF_BAD_INODE_BLK;
 }




 if (scan->scan_flags & EXT2_SF_CHK_BADBLOCKS) {
  retval = check_for_inode_bad_blocks(scan, &num_blocks);
  if (retval)
   return retval;
 }

 if ((scan->scan_flags & EXT2_SF_BAD_INODE_BLK) ||
     (scan->current_block == 0)) {
  memset(scan->inode_buffer, 0,
         (size_t) num_blocks * scan->fs->blocksize);
 } else {
  retval = io_channel_read_blk64(scan->fs->io,
          scan->current_block,
          (int) num_blocks,
          scan->inode_buffer);
  if (retval)
   return EXT2_ET_NEXT_INODE_READ;
 }
 check_inode_block_sanity(scan, num_blocks);

 scan->ptr = scan->inode_buffer;
 scan->bytes_left = num_blocks * scan->fs->blocksize;

 scan->blocks_left -= num_blocks;
 if (scan->current_block)
  scan->current_block += num_blocks;

 return 0;
}
